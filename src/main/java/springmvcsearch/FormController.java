package springmvcsearch;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import springmvcsearch.entity.Student;

@Controller
public class FormController {

	@RequestMapping("/complex")
	public String showForm() {
		
		return "complex_form";
	}
	
/*	
 * This is lenghty approach to handel a form so we not use this @requestparam Approach
	@RequestMapping(path ="/handleform",method = RequestMethod.POST)
	public String handlerForm(@RequestParam("name")String name,@RequestParam("id") Long id) {
	System.out.println(name);
	System.out.println(id);
		return"success";
	}
	
	*/
	
	
	@RequestMapping(path ="/handleform",method = RequestMethod.POST) 
	public String handlerForm(@ModelAttribute("student") Student student,BindingResult result){
     
		//Biding reult use to handel error on page
		if(result.hasErrors()) {
        	
        	return"complex_form";
        }
		System.out.println(student);
		
		return"success";
	}
	
}
