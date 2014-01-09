package org.guess.sys.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.guess.core.orm.Page;
import org.guess.core.orm.PropertyFilter;
import org.guess.core.web.BaseController;
import org.guess.sys.model.User;
import org.guess.sys.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/sys/user/")
public class UserController extends BaseController<User, UserService>{

	{
		editView = "/sys/user/edit";
		listView = "/sys/user/list";
		showView = "/sys/user/show";
	}
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("isAvailable")
	public @ResponseBody boolean isLoginIdAvailable(@RequestParam("loginId") String id,@RequestParam("oldValue") String old){
		System.out.println(id);
		System.out.println(old);
		if(id.equals(old)) return true;
		User u = userService.findUniqueBy("loginId", id);
		return u == null;
	}
	
	@RequestMapping("page")
	public @ResponseBody Map<String,Object> page(Page<User> page,HttpServletRequest request){
		Page<User> pageData = userService.findPage(page, PropertyFilter.buildFromHttpRequest(request, "search"));
		return pageData.returnMap();
	}
}
