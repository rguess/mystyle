package org.guess.security.user;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.guess.core.utils.mapper.JsonMapper;
import org.guess.security.model.User;
import org.guess.security.service.UserService;
import org.hibernate.SessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/applicationContext.xml")
public class UserTest {

	@Autowired
	private SessionFactory sessionFactory;

	@Autowired
	private UserService userService;

	@Test
	public void add() throws Exception {
		User u = new User();
		User u1 = new User();
		u1.setId(Long.valueOf("123"));
		List<User> users = new ArrayList<User>();
		Map<String,Object> map = new HashMap<String,Object>();
		users.add(u);
		users.add(u1);
		users.add(u);
		users.add(u);
		users.add(u);
		map.put("01", users);
		map.put("02", "hello");
		JsonMapper mapper = new JsonMapper();
		System.out.println(JsonMapper.nonEmptyMapper().toJson(users));
//		System.out.println(mapper.toJson(u));
		System.out.println(mapper.toJson(users));
//		System.out.println(mapper.toJson(map));
		// userService.save(u);
	}

	@Test
	public void testSessionFactory() {
//		System.out.println(sessionFactory.getCurrentSession());
	}
	
	public static void main(String[] args) {
		int a = 1;
		int b = 2;
		b = a + 0 * (a = b);
		System.out.print(a + ":" + b);
	}

}
