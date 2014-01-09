package org.guess.sys.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
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
	public @ResponseBody boolean isLoginIdAvailable(@RequestParam("loginId") String id){
		System.out.println(id);
		return true;
	}
	
	@RequestMapping("page")
	public @ResponseBody Map<String,Object> page(Page<User> page,HttpServletRequest request){
		Page<User> pageData = userService.findPage(page, PropertyFilter.buildFromHttpRequest(request, "search"));
		return pageData.returnMap();
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
