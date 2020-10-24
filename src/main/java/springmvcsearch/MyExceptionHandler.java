package springmvcsearch;

import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;



@ControllerAdvice  //use this to indicate that its centralized Exception Handeler class
public class MyExceptionHandler {
	
	@ResponseStatus(value =HttpStatus.INTERNAL_SERVER_ERROR)
	@ExceptionHandler(value=NullPointerException.class)
	public String exceptionHandlerNull(Model m){
		m.addAttribute("msg","Null Pointer exception has occured");
		return "null_page";
	}
	
	@ResponseStatus(value =HttpStatus.INTERNAL_SERVER_ERROR)
	@ExceptionHandler(value=NumberFormatException.class)
	public String exceptionHandlerNumberFormate(Model m){
		m.addAttribute("msg","Number format exception has occured");
		return "null_page";
	}
	
	@ResponseStatus(value =HttpStatus.INTERNAL_SERVER_ERROR)
	@ExceptionHandler(value=Exception.class)
	public String exceptionHandlerGeneric(Model m){
		m.addAttribute("msg","Exception has occured");
		return "null_page";
	}


}
