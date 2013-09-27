package org.guess.security.user;

import java.util.Date;

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
	public void add() throws Exception{
		User u = new User("张三", "123456", new Date());
		userService.save(u);
	}
	
	@Test
	public void testSessionFactory(){
		System.out.println(sessionFactory.getCurrentSession());
	}
	
}
