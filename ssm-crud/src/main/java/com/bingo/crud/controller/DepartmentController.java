package com.bingo.crud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bingo.crud.bean.Department;
import com.bingo.crud.bean.Msg;
import com.bingo.crud.service.DepartmentService;



/**
 * 处理和部门有关的请求
 * @author bingo
 *
 */
@Controller
public class DepartmentController {
	
	@Autowired
	DepartmentService departmentService;

	@RequestMapping("/depts")
	@ResponseBody
	public Msg getDepts(){
		List<Department> list = departmentService.getDepts();
		return Msg.success().add("depts", list);
	}
	
}
