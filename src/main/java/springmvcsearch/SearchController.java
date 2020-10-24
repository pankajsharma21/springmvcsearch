package springmvcsearch;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.view.RedirectView;
@Controller
public class SearchController {
	
	@RequestMapping("/user/{userId}/{userName}")
	public String getUserDetail(@PathVariable("userId") int userId,@PathVariable("userName") String userName) {
		System.out.println(userId);
		System.out.println(userName);
		//Integer.parseInt(userName);  //this is custom Exception to check exception method
		return "home";
	}

	@RequestMapping("/home")
	public String home() {
		System.out.println("going to home view.....");
		//String string=null;                      //this is custom Exception to check exception method
		//System.out.println(string.length());     //this is custom Exception to check exception method
		return"home";
	}
	@RequestMapping("/search")
	public RedirectView search(@RequestParam("querybox") String query) {
		RedirectView view =new RedirectView();
		
		if(query.isBlank()) {
			view.setUrl("home");
			return view ;
		}
		
	String url = "http://www.google.com/search?q="+query;
	view.setUrl(url);
	return view;
		
	}
	
	//Handling exception in our spring mvc
	//we make Centralized Exception so we comment this
	
	/*
	 
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

*/

}
