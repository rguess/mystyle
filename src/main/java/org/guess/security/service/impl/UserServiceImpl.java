package org.guess.security.service.impl;

import org.guess.core.service.BaseServiceImpl;
import org.guess.security.dao.UserDao;
import org.guess.security.model.User;
import org.guess.security.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl extends BaseServiceImpl<User, Long, UserDao> implements UserService{

	@Autowired
	public UserDao userDao;

	@Override
	protected UserDao getEntityDao() {
		
		return null;
	}
	
	
}
