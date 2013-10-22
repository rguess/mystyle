package org.guess.security.user;

import java.util.HashMap;
import java.util.Map;

import org.guess.core.orm.PageRequest;
import org.guess.security.dao.UserDao;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/applicationContext.xml")
public class UserTestDao {

	@Autowired
	private UserDao userDao;
	
	@Test
	public void add(){
		
	}
	
	@Test
	public void get(){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("name", "nihao");
		userDao.findPage(new PageRequest(), "from User where name = :name", map);
	}
	
}
