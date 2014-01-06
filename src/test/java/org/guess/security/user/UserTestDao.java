package org.guess.security.user;

import java.util.HashMap;
import java.util.Map;

import org.guess.core.orm.Page;
import org.guess.core.orm.PageRequest;
import org.guess.core.utils.mapper.JsonMapper;
import org.guess.sys.model.User;
import org.guess.sys.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/applicationContext.xml")
public class UserTestDao {

	@Autowired
	private UserService userService;
	
	@Test
	public void add(){
		
	}
	
	@Test
	public void get(){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", Long.valueOf("1"));
		Page<User> page = userService.findPage(new PageRequest(), "from User where id = :id", map);
		System.out.println(JsonMapper.nonEmptyMapper().toJson(page.getResult()));
	}
	
}
