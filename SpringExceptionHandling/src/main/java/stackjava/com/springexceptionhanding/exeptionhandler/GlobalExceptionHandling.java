package stackjava.com.springexceptionhanding.exeptionhandler;

import java.io.IOException;

import org.springframework.validation.BindException;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

//Khi sử dụng annotation @ControllerAdvice cho class, thì các method được đánh dấu 
//@ExceptionHandler có thể xử lý exception cho cả các method của các class khác,
//package khác.
@ControllerAdvice
public class GlobalExceptionHandling {

	@ExceptionHandler(org.springframework.validation.BindException.class)
	private ModelAndView processInvalidData(BindException ex) {
		StringBuilder error = new StringBuilder();
		for (ObjectError objectError: ex.getAllErrors()) {
			error.append(objectError.getDefaultMessage());
			error.append("<br/>");
		}
		ModelAndView model = new ModelAndView("error");
		model.addObject("error", error);
		return model;
	}

	@ExceptionHandler(IOException.class)
	private ModelAndView processIOException(IOException ex) {
		ModelAndView model = new ModelAndView("error");
		model.addObject("error", ex.getMessage());
		return model;
	}


}
