package com.bingo.crud.dao;

import java.util.List;
import java.util.Map;

import com.bingo.crud.bean.Employee;

public interface ExcelMapper<T> {
	
	int insertInfoBatch(List<T> list);

	/**
	 * 根据查询条件查询出所有的记录,不用分页,用于excel导出功能  
	 * @param userDeviceVo
	 * @return
	 */
	List<Employee> getEmpForExcel(T t);

}
