package org.guess.core.web;

import java.lang.reflect.Field;
import java.util.List;

import org.guess.core.service.BaseService;
import org.guess.core.utils.ReflectionUtils;
import org.guess.sys.model.User;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@SuppressWarnings("unchecked")
public abstract class BaseController<T, M extends BaseService<T, Long>> {

	protected final static String REDIRECT = "redirect:";

	protected String listView = null;
	protected String editView = null;
	protected String showView = null;

	private M getBaseService() {
		List<Field> fields = ReflectionUtils.getFieldsByType(this,
				ReflectionUtils.getSuperClassGenricType(getClass(), 1));
		return (M) ReflectionUtils.getFieldValue(this, fields.get(0).getName());
	}

	@RequestMapping(method = RequestMethod.GET, value = "create")
	public String create() {
		return editView;
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "edit")
	public String create(T object) throws Exception {
		getBaseService().save(object);
		return REDIRECT + listView;
	}

	@RequestMapping(method = RequestMethod.GET, value = "update/{id}")
	public ModelAndView update(@PathVariable("id") Long id) throws Exception {
		T obj = getBaseService().get(id);
		ModelAndView mav = new ModelAndView(editView);
		mav.addObject("obj", obj);
		return mav;
	}

	@RequestMapping(value = "delete/{id}")
	public String delete(@PathVariable("id") Long id) throws Exception {
		getBaseService().removeById(id);
		return REDIRECT+listView;
	}
	
	@RequestMapping(value = "show/{id}")
	public ModelAndView show(@PathVariable("id") Long id) throws Exception{
		T object = getBaseService().get(id);
		ModelAndView mav = new ModelAndView(showView);
		mav.addObject("obj", object);
		return mav;
	}
	
	@RequestMapping(value="list")
	public String list(){
		return listView;
	}

}
