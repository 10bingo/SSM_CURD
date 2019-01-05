package com.bingo.crud.controller;

import java.beans.IntrospectionException;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSON;
import com.bingo.crud.bean.Employee;
import com.bingo.crud.bean.Msg;
import com.bingo.crud.service.ExcelService;
import com.bingo.crud.utils.ExportExcel;

@RequestMapping("excel")
@Controller
public class ExcelController {
	
	@Autowired
	private ExcelService excelService;

	@RequestMapping(value="/import",method=RequestMethod.POST)
	public @ResponseBody Msg importExcel(@RequestParam("file") MultipartFile file) throws Exception{
		
	     //获取上传的文件
	     InputStream in = file.getInputStream();
	     //数据导入
	     excelService.importExcelInfo(in,file);
	     in.close();
	     System.out.println("导入成功");
	     return Msg.success();

	}
	
	/*@RequestMapping(value="/export",method=RequestMethod.GET)
	public void exportExcel(HttpServletRequest request, HttpServletResponse response) throws Exception{
	    
		 response.reset(); //清除buffer缓存  
	        //Map<String,Object> map=new HashMap<String,Object>();  
	        // 指定下载的文件名  
	        response.setContentType("application/vnd.ms-excel;charset=UTF-8");  
	        response.setHeader("Content-Disposition","attachment;filename="+new String("员工表.xlsx".getBytes(),"iso-8859-1"));
	        //导出Excel对象  
	        XSSFWorkbook workbook = excelService.exportExcelInfo();
	        OutputStream output;  
	        try {  
	            output = response.getOutputStream();  
	            BufferedOutputStream bufferedOutput = new BufferedOutputStream(output);  
	            bufferedOutput.flush();  
	            workbook.write(bufferedOutput);  
	            bufferedOutput.close();  
	        } catch (IOException e) {  
	            e.printStackTrace();  
	        }

	}
*/
	

	/**
	 * 用于导出excel的查询结果
	 * @param queryJson
	 * @return
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping("/export")
	public void exportExcel(HttpServletRequest request, HttpServletResponse response
			//,@RequestParam(value = "queryJson") String queryJson
			) throws UnsupportedEncodingException {
		/*//如果出现中文乱码请添加下面这句
		queryJson = URLDecoder.decode(queryJson,"utf-8"); */
		//需要导入fastjson包
		//Employee emp = JSON.parseObject(queryJson, Employee.class);
		Employee emp = JSON.parseObject(null,Employee.class);
		List<Employee> empList = excelService.exportExcelInfo(emp);
		ExportExcel<Employee> ee= new ExportExcel<Employee>();
		String[] headers = { "员工编号", "姓名", "性别", "邮箱", "部门" };
		String fileName = "员工信息表";
		ee.exportExcel(headers,empList,fileName,response);
	}


	
}
