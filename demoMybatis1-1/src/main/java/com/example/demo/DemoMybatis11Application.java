
package com.example.demo;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;

import com.example.demo.mapper.ItemsMapper;
import com.example.demo.mapper.ItemsUsersMapper;
import com.example.demo.mapper.UsersMapper;
import com.example.demo.model.Items;
import com.example.demo.model.ItemsUsers;

@SpringBootApplication
public class DemoMybatis11Application {
	@Autowired
	UsersMapper usersMapper;

	@Autowired
	ItemsMapper itemsMapper;
	
	@Autowired
	ItemsUsersMapper itemsUsersMapper;
	
	public static void main(String[] args) {
		SpringApplication.run(DemoMybatis11Application.class, args);
	}
	
	@Bean
	public CommandLineRunner testInsert(ApplicationContext ctx) {
		return args -> {
			String birthdayAsStr = "2010-12-01";
			DateFormat format = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
			Date birthday = format.parse(birthdayAsStr);
			
//			Users user = usersMapper.selectByPrimaryKey(1);
//			System.out.println("Name: " + user.getName());
			
//			Users u1 = new Users("HuyTP", birthday);
//			int result = usersMapper.insert(u1);
//			System.out.println("result: " + result);
			
//			int result1 = usersMapper.deleteByPrimaryKey(1);
//			System.out.println("Result: " + result1);
			
//			int result2 = usersMapper.updateByPrimaryKeySelective(new Users(3, "Hoachange"));
//			System.out.println("Result: " + result2);
			
//			UsersExample example = new UsersExample();
//			example.createCriteria().andIdEqualTo(3).andNameEqualTo("Hoachange");
//			List<Users> list = usersMapper.selectByExample(example);
//			System.out.println("Size: " + list.size());
			
//			List<Map<String, Object>> list = usersMapper.getAllUser("Hoachange");
//			for (Map<String, Object> value : list) {
//				System.out.println("Test name: " + value.get("name"));
//			}
			
//			Map<String, Object> param = new HashMap<>();
//			param.put("name", "Hoachange");
//			param.put("id", "3");
//			List<Map<String, Object>> list = usersMapper.getAllUser1(param);
//			for (Map<String, Object> value : list) {
//				System.out.println("Test name1: " + value.get("name"));
//			}
			
//			int item = itemsMapper.insertSelective(new Items("hang3", 3));
//			System.out.println("Result: " + item);
			List<ItemsUsers> listItemsUsers = itemsUsersMapper.selectCommon();
			System.out.println("Test QH table: item= " + listItemsUsers.get(0).getItem_name()
					+" and name= " + listItemsUsers.get(0).getUser_name());
		};
	}

}
