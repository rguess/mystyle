package org.guess.sys.service.impl;

import org.guess.core.service.BaseServiceImpl;
import org.guess.sys.dao.UserDao;
import org.guess.sys.model.User;
import org.guess.sys.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl extends BaseServiceImpl<User, Long, UserDao>
		implements UserService {

	@Autowired
	public UserDao userDao;

	@Override
	protected UserDao getEntityDao() {
		return userDao;
	}

}