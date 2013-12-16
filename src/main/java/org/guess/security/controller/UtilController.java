package org.guess.security.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/util")
public class UtilController {

	@RequestMapping(method=RequestMethod.GET,value="date")
	public String getDate(){
		return "mine/date";
	}
}
