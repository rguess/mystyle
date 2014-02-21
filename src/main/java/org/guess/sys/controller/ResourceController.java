package org.guess.sys.controller;

import java.util.List;

import org.guess.core.web.BaseController;
import org.guess.sys.model.Resource;
import org.guess.sys.service.ResourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/sys/resource/")
public class ResourceController extends BaseController<Resource, ResourceService>{

	{
		editView = "/sys/resource/edit";
		listView = "/sys/resource/list";
		showView = "/sys/resource/show";
	}
	
	@Autowired
	private ResourceService rService;
	
	@RequestMapping(method=RequestMethod.GET,value="/tree")
	@ResponseBody
	public List<Resource> tree() throws Exception{
		List<Resource> res = rService.findBy("grade", 1);
		return res;
	}
	
}
