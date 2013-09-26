package org.guess.security.controller;

import java.util.Date;

import org.guess.security.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/01")
public class HelloController {

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView printWelcome(){
		ModelAndView mav = new ModelAndView("mine/01");
		User user = new User("hello", "54",new Date());
		mav.addObject("user",user);
		return mav;
	}
	
	@RequestMapping(method = RequestMethod.GET,value="/json")
	public @ResponseBody User printJson(){
		User user = new User("hello", "54",new Date());
		return user;
	}
}
