package org.guess.security.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.guess.core.orm.Page;
import org.guess.core.web.BaseController;
import org.guess.security.model.User;
import org.guess.security.service.UserService;
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
	public @ResponseBody boolean isLoginIdAvailable(@RequestParam("loginId") String id){
		System.out.println(id);
		return true;
	}
	
	@RequestMapping("page")
	public String page(Page<User> page){
		System.out.println(page.getPageNo());
		System.out.println(page.getPageSize());
		System.out.println(page.getOrderBy());
		System.out.println(page.getOrderDir());
		return null;
	}
	
	@RequestMapping("datas")
	public @ResponseBody Map<String,Object> getDatas(){
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("iTotalRecords", 1000);
		map.put("iTotalDisplayRecords", 1000);
		List<String[]> list = new ArrayList<String[]>();
		list.add(new String[]{"Gecko1","Mozilla 1.1","Win 95+ / OSX.1+","1.1","A"});
		list.add(new String[]{"Gecko2","Mozilla 1.1","Win 95+ / OSX.1+","1.1","A"});
		list.add(new String[]{"Gecko3","Mozilla 1.1","Win 95+ / OSX.1+","1.1","A"});
		list.add(new String[]{"Gecko4","Mozilla 1.1","Win 95+ / OSX.1+","1.1","A"});
		list.add(new String[]{"Gecko5","Mozilla 1.1","Win 95+ / OSX.1+","1.1","A"});
		list.add(new String[]{"Gecko6","Mozilla 1.1","Win 95+ / OSX.1+","1.1","A"});
		list.add(new String[]{"Gecko7","Mozilla 1.1","Win 95+ / OSX.1+","1.1","A"});
		list.add(new String[]{"Gecko8","Mozilla 1.1","Win 95+ / OSX.1+","1.1","A"});
		list.add(new String[]{"Gecko9","Mozilla 1.1","Win 95+ / OSX.1+","1.1","A"});
		list.add(new String[]{"Gecko10","Mozilla 1.1","Win 95+ / OSX.1+","1.1","A"});
		map.put("aaData", list);
		return map;
	}
	
}
