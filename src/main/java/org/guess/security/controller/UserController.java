package org.guess.security.controller;

import java.util.Date;

import org.guess.security.model.User;
import org.guess.security.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView printWelcome() throws Exception{
		User u = new User("张三", "123456", new Date());
		userService.save(u);
//		List<User> users = userService.getAll();
//		System.out.println(users.size());
		ModelAndView mav = new ModelAndView("mine/01");
		return mav;
	}
}
