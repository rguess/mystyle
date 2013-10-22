package org.guess.security.controller;

import java.util.HashMap;
import java.util.Map;

import org.guess.core.orm.Page;
import org.guess.core.orm.PageRequest;
import org.guess.core.web.BaseController;
import org.guess.security.dao.UserDao;
import org.guess.security.model.User;
import org.guess.security.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/user")
public class UserController extends BaseController<User, UserService>{

	{
		editView = "mine/01";
	}
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private UserDao userDao;
	
	@RequestMapping(method=RequestMethod.GET,value="dao")
	public ModelAndView dao(){
		ModelAndView mav = new ModelAndView("mine/01");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("name", "nihao");
		Page<User> users = userDao.findPage(new PageRequest(), "from User where name = :name", map);
		System.out.println(users.getResult().size());
		for(User user:users.getResult()){
			System.out.println(user);
		}
		return mav;
	}
	
	
}
