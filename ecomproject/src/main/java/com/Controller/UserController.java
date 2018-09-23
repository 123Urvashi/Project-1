package com.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
//@RequestMapping("/")
public class UserController {

	/*@RequestMapping("/")
	public String user(ModelAndView mv)
	{
		return "NavBarDemo";
	}*/
	
	@RequestMapping("/")
	public String Carousel(ModelAndView mv)
	{
		return "Carousel";
	}
	
	@RequestMapping("/Carousel")
	public String CarouselHome(ModelAndView mv)
	{
		return "Carousel";
	}

	@RequestMapping("/Register")
	public String Register(ModelAndView mv)
	{
		return "Register";
	}
	
	@RequestMapping("/SignIn")
	public String SignIn(ModelAndView mv)
	{
		return "SignIn";
	}
	
	@RequestMapping("/FeedbackForm")
	public String FeedbackForm(ModelAndView mv)
	{
		return "FeedbackForm";
	}

}