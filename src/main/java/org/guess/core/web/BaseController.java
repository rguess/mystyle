package org.guess.core.web;

import java.lang.reflect.Field;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.guess.core.orm.Page;
import org.guess.core.orm.PropertyFilter;
import org.guess.core.service.BaseService;
import org.guess.core.utils.ReflectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * springmvc Controller基类,通过泛型实现基本的增删查改、ajax返回列表数据以及简单的属性查询
 * 
 * 例：
 * List page     : GET /user/
 * Create page   : GET /user/create
 * Create action : POST /user/edit
 * Update page   : GET /user/update/{id}
 * Update action : POST /user/edit
 * Delete action : GET /user/delete/{id}
 * show page     : GET /user/show/{id}
 * 
 * @author guess
 */
@SuppressWarnings("unchecked")
public abstract class BaseController<T, M extends BaseService<T, Long>> {

	protected final static String REDIRECT = "redirect:";

	protected String listView = null;
	protected String editView = null;
	protected String showView = null;
	
	@Autowired
	protected HttpServletRequest request;

	/**
	 * 反射获取子类中service
	 * @return
	 */
	private M getBaseService() {
		List<Field> fields = ReflectionUtils.getFieldsByType(this,
				ReflectionUtils.getSuperClassGenricType(getClass(), 1));
		return (M) ReflectionUtils.getFieldValue(this, fields.get(0).getName());
	}

	@RequestMapping(method = RequestMethod.GET, value = "create")
	public ModelAndView create() throws Exception{
		return new ModelAndView(editView);
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
	
	@RequestMapping("page")
	public @ResponseBody Map<String,Object> page(Page<T> page,HttpServletRequest request){
		Page<T> pageData = getBaseService().findPage(page, PropertyFilter.buildFromHttpRequest(request, "search"));
		return pageData.returnMap();
	}
	
	@RequestMapping(value = "/*")
	public String list(){
		return listView;
	}

}
