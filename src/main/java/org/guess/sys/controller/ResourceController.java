package org.guess.sys.controller;

import java.util.List;

import org.guess.core.web.BaseController;
import org.guess.sys.model.Resource;
import org.guess.sys.service.IconService;
import org.guess.sys.service.ResourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


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
	
	@Autowired
	private IconService iService;
	
	@RequestMapping(method=RequestMethod.GET,value="/tree")
	@ResponseBody
	public List<Resource> tree() throws Exception{
		List<Resource> res = rService.findBy("grade", 1);
		return res;
	}
	
	@RequestMapping(method=RequestMethod.GET,value="/showTree")
	@ResponseBody
	public List<Resource> showTree() throws Exception{
		List<Resource> res = rService.findBy("grade", 0);
		return res;
	}
	
	@Override
	public ModelAndView create() throws Exception {
		ModelAndView mav = new ModelAndView(editView);
		mav.addObject("icons", iService.getAll());
		return mav;
	}
	
	@Override
	public ModelAndView update(@PathVariable("id") Long id) throws Exception {
		ModelAndView mav = new ModelAndView(editView);
		Resource obj = rService.get(id);
		mav.addObject("obj", obj);
		mav.addObject("icons", iService.getAll());
		return mav;
	}
	
	@Override
	public String create(Resource object) throws Exception {
		if(object.getParent() == null || object.getParent().getId() == null){
			object.setParent(null);
			object.setGrade(1);
		}else{
			Resource parent = rService.get(object.getParent().getId());
			object.setGrade(parent.getGrade()+1);
		}
		return super.create(object);
	}
	
}
