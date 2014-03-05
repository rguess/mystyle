package org.guess.sys.controller;

import org.guess.core.web.BaseController;
import org.guess.sys.model.Icon;
import org.guess.sys.service.IconService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/sys/icon/")
public class IconController extends BaseController<Icon, IconService>{

	{
		editView = "/sys/icon/edit";
		listView = "/sys/icon/list";
		showView = "/sys/icon/show";
	}
	
	@Autowired
	private IconService rService;
	
}
