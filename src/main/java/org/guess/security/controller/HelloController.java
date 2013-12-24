package org.guess.security.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.guess.security.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@SuppressWarnings("rawtypes")
@Controller
@RequestMapping("/01")
public class HelloController {

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView printWelcome() throws IOException {

		ModelAndView mav = new ModelAndView("mine/01");
		return mav;
	}

	@RequestMapping(method = RequestMethod.GET, value = "/error")
	public void printError(HttpServletResponse response,
			HttpServletRequest request) throws IOException {
		// System.out.println(request.getHeader("X-Requested-With")+"-----------");
		response.sendError(403, "noright");
	}

	@RequestMapping(method = RequestMethod.GET, value = "/json")
	public @ResponseBody
	Map printJson() {
		User user = new User();
		Map<String, Object> map = new HashMap<String, Object>();
		List<User> users = new ArrayList<User>();
		users.add(user);
		users.add(user);
		users.add(user);
		users.add(user);
		users.add(user);
		map.put("rows", users);
		map.put("total", 33);
		return map;
	}

	@RequestMapping("request")
	public ModelAndView getRequest(
			@RequestParam(value = "id", defaultValue = "22") int id) {
		System.out.println(id);
		ModelAndView mav = new ModelAndView("mine/01");
		return mav;
	}

	@RequestMapping(method = RequestMethod.POST, value = "/object")
	public String getObject(@RequestBody User user) {
		System.out.println(user);
		return "hello";
	}

}
