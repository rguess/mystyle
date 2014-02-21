package org.guess.security.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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
	public @ResponseBody Map<String,Object> page(Page<User> page,HttpServletRequest request){
		System.out.println(request.getParameter("search_LIKES_email"));
		List<User> users = new ArrayList<User>();
		users.add(new User(Long.valueOf("1"),"rguess"+((page.getPageNo()-1)*page.getPageSize()+1), "123456", "guess", "502876941@qq.com", "15108276486", "成都", "0", "管理员"));
		users.add(new User(Long.valueOf("2"),"rguess"+((page.getPageNo()-1)*page.getPageSize()+2), "123456", "guess", "502876941@qq.com", "15108276486", "成都", "0", "管理员"));
		users.add(new User(Long.valueOf("3"),"rguess"+((page.getPageNo()-1)*page.getPageSize()+3), "123456", "guess", "502876941@qq.com", "15108276486", "成都", "0", "管理员"));
		users.add(new User(Long.valueOf("4"),"rguess"+((page.getPageNo()-1)*page.getPageSize()+4), "123456", "guess", "502876941@qq.com", "15108276486", "成都", "0", "管理员"));
		users.add(new User(Long.valueOf("5"),"rguess"+((page.getPageNo()-1)*page.getPageSize()+5), "123456", "guess", "502876941@qq.com", "15108276486", "成都", "0", "管理员"));
		users.add(new User(Long.valueOf("6"),"rguess"+((page.getPageNo()-1)*page.getPageSize()+6), "123456", "guess", "502876941@qq.com", "15108276486", "成都", "0", "管理员"));
		users.add(new User(Long.valueOf("7"),"rguess"+((page.getPageNo()-1)*page.getPageSize()+7), "123456", "guess", "502876941@qq.com", "15108276486", "成都", "0", "管理员"));
		users.add(new User(Long.valueOf("8"),"rguess"+((page.getPageNo()-1)*page.getPageSize()+8), "123456", "guess", "502876941@qq.com", "15108276486", "成都", "0", "管理员"));
		users.add(new User(Long.valueOf("9"),"rguess"+((page.getPageNo()-1)*page.getPageSize()+9), "123456", "guess", "502876941@qq.com", "15108276486", "成都", "0", "管理员"));
		users.add(new User(Long.valueOf("10"),"rguess"+((page.getPageNo()-1)*page.getPageSize()+10), "123456", "guess", "502876941@qq.com", "15108276486", "成都", "0", "管理员"));
		Page<User> pageData = new Page<User>();
		pageData.setResult(users);
		pageData.setTotalItems(1000);
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
