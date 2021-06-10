package stackjava.com.springmvchello.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {

	private static final Logger logger = Logger.getLogger(HelloController.class);

	@RequestMapping("/")
	public String index() {
		logger.debug("debug log huy1");
		logger.info("info log huy3");
		logger.error("error log huy2");
		
		return "index";
	}

}
