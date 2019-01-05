package com.bingo.crud.service;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.bingo.crud.bean.Employee;
import com.bingo.crud.dao.ExcelMapper;
import com.bingo.crud.utils.ExcelUtil;



@Service
public class ExcelService {
	
	@Autowired
	private ExcelMapper<Employee> excelMapper;
	
	public void importExcelInfo(InputStream in, MultipartFile file) throws Exception{
	    List<List<Object>> listob = ExcelUtil.getBankListByExcel(in,file.getOriginalFilename());
	    List<Employee> empList = new ArrayList<Employee>();
	    //遍历listob数据，把数据放到List中
	    for (int i = 0; i < listob.size(); i++) {
	        List<Object> ob = listob.get(i);
	        Employee employee = new Employee();
	        
	        employee.setEmpName((String) ob.get(0));
	        employee.setGender((String) ob.get(1));
	        employee.setEmail((String) ob.get(2));
	        employee.setDId(Integer.parseInt((String)ob.get(3)));
	       
	        
	        empList.add(employee);
	    }
	    //批量插入
	    excelMapper.insertInfoBatch(empList);
	}

	/*public XSSFWorkbook exportExcelInfo() throws Exception{
		//根据条件查询数据
		List<Map<String,Object>> list = excelMapper.getAllEmpList();
		//System.out.println(list);
		List<ExcelBean> excel = new ArrayList<>();
		Map<Integer,List<ExcelBean>> map = new LinkedHashMap<>();
		//设置标题栏
		excel.add(new ExcelBean("员工编号","emp_id",0));
		excel.add(new ExcelBean("员工名称","emp_name",0));
		excel.add(new ExcelBean("性别", "gender", 0));
		excel.add(new ExcelBean("邮箱","email",0));
		excel.add(new ExcelBean("所属部门","dept_name",0));
		excel.add(new ExcelBean("员工编号","empId",0));
		excel.add(new ExcelBean("员工名称","empName",0));
		excel.add(new ExcelBean("性别", "gender", 0));
		excel.add(new ExcelBean("邮箱","email",0));
		excel.add(new ExcelBean("所属部门","dId",0));
		
		map.put(0,excel);
		String sheetName = "员工信息表";
		//调用ExcelUtil方法
		XSSFWorkbook xssfWorkbook = ExcelUtil.createExcelFile(Employee.class, list, map, sheetName);
		System.out.println(xssfWorkbook);
		return xssfWorkbook;
	}*/
	

	/**
	 * 根据查询条件查询出所有的记录,不用分页,用于excel导出功能  
	 * @param userDeviceVo
	 * @return
	 */
	public List<Employee> exportExcelInfo(Employee employee) {
		List<Employee> list = excelMapper.getEmpForExcel(employee);
		
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getGender().equals("M")) {
				list.get(i).setGender("男");
			} else {
				list.get(i).setGender("女");
			}
		}
		return list;
	}


	
}
	
