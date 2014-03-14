package org.guess.security.user;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.guess.core.orm.Page;
import org.guess.core.orm.PageRequest;
import org.guess.core.orm.PropertyFilter;
import org.guess.core.utils.mapper.JsonMapper;
import org.guess.sys.model.Icon;
import org.guess.sys.model.User;
import org.guess.sys.service.IconService;
import org.guess.sys.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/spring-config.xml")
public class UserTestDao {

	@Autowired
	private UserService userService;
	
	@Autowired
	private IconService iconService;
	
	/*@Test
	public void add() throws Exception{
		User user = new User("guess", "123456", "张三", "502876941@qq.com", "15108276486", "成都", "1", "12222");
		userService.save(user);
	}*/
	
/*	@Test
	public void get(){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", Long.valueOf("1"));
		Page<User> page = userService.findPage(new PageRequest(), "from User where id = :id", map);
		System.out.println(JsonMapper.nonEmptyMapper().toJson(page.getResult()));
	}*/
	
	@Test
	public void getByProperty(){
		List<PropertyFilter> list = new ArrayList<PropertyFilter>();
		list.add(new PropertyFilter("EQD_createDate", "2014-01-08 17:23:52"));
//		list.add(new PropertyFilter("EQL_id", "1"));
		System.out.println(JsonMapper.nonDefaultMapper().toJson(userService.findPage(new PageRequest(), list).getResult()));
	}
	
	/*@Test
	public void delete() throws Exception{
		userService.removeById(Long.valueOf("1"));
	}*/
	
	@Test
	public void getById() throws Exception{
		System.out.println(userService.get(Long.valueOf("19")).getId());
	}
	
	@Test
	public void findUniqueBy() throws Exception{
		System.out.println(JsonMapper.nonEmptyMapper().toJson(userService.findUniqueBy("loginId", "admin")));
	}
	
	/**
	 * 自制图标批量添加
	 * @throws Exception
	 */
	@Test
	public void addIcons() throws Exception{
		for (int i = 1; i <= 50; i++) {
			Icon icon = new Icon();
			String x = "";
			if(i<10){
				x = "0";
			}
			icon.setMark("diy_icon_01_"+x+i);
			icon.setType("png");
			iconService.save(icon);
			System.out.println(icon.getMark());
		}
	}
	
}
