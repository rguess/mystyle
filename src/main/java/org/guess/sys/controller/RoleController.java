package org.guess.sys.controller;

import org.guess.core.web.BaseController;
import org.guess.sys.model.Role;
import org.guess.sys.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/sys/role/")
public class RoleController extends BaseController<Role, RoleService>{

	{
		editView = "/sys/role/edit";
		listView = "/sys/role/list";
		showView = "/sys/role/show";
	}
	
	@Autowired
	private RoleService roleService;
	
}
