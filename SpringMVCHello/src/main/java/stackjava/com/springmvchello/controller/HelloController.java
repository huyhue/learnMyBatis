package stackjava.com.springmvchello.controller;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

@Controller
public class HelloController {
	UserDao manager = new UserDaoIbatis();
	
	
	
	@RequestMapping("/")
	public String index(ModelMap map) {
		map.addAttribute("msg", "HuyTP huyhue");
		return "index";
	}

	@RequestMapping(value = "/hello", method = RequestMethod.GET)
	public String hello(@ModelAttribute("searchVO") SampleDefaultVO searchVO, ModelMap model) throws IOException {
		Reader reader = Resources.getResourceAsReader("sql-maps-config.xml");
		SqlMapClient sqlmapClient = SqlMapClientBuilder.buildSqlMapClient(reader);
		List<HanshinVO> list = manager.getAll(sqlmapClient);
		
		model.addAttribute("resultList", list);
		return "hello";
	}
	
	@PostMapping("/search")
	public String search(@ModelAttribute("searchVO") SampleDefaultVO searchVO, ModelMap model) throws IOException {
		Reader reader = Resources.getResourceAsReader("sql-maps-config.xml");
		SqlMapClient sqlmapClient = SqlMapClientBuilder.buildSqlMapClient(reader);
		List<HanshinVO> list = manager.selectHanshinList(searchVO, sqlmapClient);
		System.out.println("lened: "+searchVO.getSearchCondition() +searchVO.getSearchKeyword());
		model.addAttribute("resultList", list);
		return "hello";
	}

}
