package stackjava.com.springexceptionhanding.controller;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;

import stackjava.com.springexceptionhanding.exeptionhandler.UnauthorizedException;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String home() {
		return "home";
	}

	@ExceptionHandler(NullPointerException.class)
	public String processNullPointerException() {
		return "null-pointer-exception";
	}
	
	@RequestMapping(value = "/nullPointerException")
	public String testNullPointerException() throws NullPointerException {
		throw new NullPointerException("this is null pointer exception");
	}
	
	

	@RequestMapping(value = "/ioException")
	public String testIOException() throws IOException {
		throw new IOException("this is io exception");
	}
	
	@RequestMapping(value = "/unauthorizedException")
	public String testUnauthorizedException() throws IOException {
		throw new UnauthorizedException();
	}

}
