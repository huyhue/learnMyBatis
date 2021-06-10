package fpt.edu.vn;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import fpt.edu.vn.dao.EmployeeMapper;

@Controller
public class TestController {
	@Autowired
	EmployeeMapper employeeMapper;
	
	@RequestMapping("/")
	public String index() {
		System.out.println(employeeMapper.getAllEmployees());
		return "index";
	}
}
