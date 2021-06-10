package stackjava.com.springmvchello.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {

	@RequestMapping("/")
	public String index() {
		return "index";
	}

	@RequestMapping("/error")
	public String error() throws Exception {
		throw new Exception("testing");
	}
}
