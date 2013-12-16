package org.guess.core.web;

import org.guess.core.service.BaseService;
import org.guess.security.model.User;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

public abstract class BaseController<T, M extends BaseService<T, Long>> {

	protected String listView = null;
	protected String editView = null;
	protected String showView = null;
	protected String successView = null;
	
	protected abstract M getBaseService();
		
//		List<Field> fields = ReflectionUtils.getFieldsByType(this,
//				ReflectionUtils.getSuperClassGenricType(getClass(), 1));
//		return (M) ReflectionUtils.getFieldValue(this, fields.get(0).getName());
	

	@RequestMapping(method = RequestMethod.GET, value = "add")
	public String add() {
		return editView;
	}

	@RequestMapping(method = RequestMethod.POST, value = "edit")
	public String add(T object) throws Exception {
		getBaseService().save(object);
		return editView;
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "update/{id}")
	public ModelAndView update(@PathVariable("id") Long id) throws Exception{
		System.out.println(id);
		User u = (User) getBaseService().get(Long.valueOf("1"));
		System.out.println(u.getAddress());
		ModelAndView mav = new ModelAndView("mine/01");
		return mav;
	}
	
	@RequestMapping(value = "delete/{id}")
	public ModelAndView delete(@PathVariable("id") Long id){
		
		return null;
	}
	
	

}
