package org.guess.security.user;

import java.util.Date;

import org.guess.core.utils.ReflectionUtils;
import org.guess.security.model.User;
import org.guess.security.service.UserService;
import org.guess.security.service.impl.UserServiceImpl;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class UserTest {

	private ConfigurableApplicationContext context = null;

	@Before
	public void init() {
		context = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
	}
	
	@Test
	public void add() throws Exception{
		UserService service = context.getBean(UserService.class);
		User u = new User("张三", "123456", new Date());
		service.save(u);
	}
	
	@Test
	public void test01(){
		ReflectionUtils.getSuperClassGenricType(UserServiceImpl.class, 2);
	}
}
