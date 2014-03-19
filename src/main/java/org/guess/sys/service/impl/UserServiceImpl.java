package org.guess.sys.service.impl;

import org.guess.core.Constants;
import org.guess.core.service.BaseServiceImpl;
import org.guess.sys.dao.UserDao;
import org.guess.sys.model.User;
import org.guess.sys.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl extends BaseServiceImpl<User, Long, UserDao> implements UserService {

	@Autowired
	public UserDao userDao;

	@Override
	public User findByLoginId(String loginId) {
		return userDao.findUniqueBy("loginId", loginId);
	}

	@Override
	public int changeUserStatus(Long id) {
		User user = userDao.get(id);
		if(Constants.USER_STATUS_LOCK == user.getStatus()){
			user.setStatus(Constants.USER_STATUS_UNLOCK);
		}else{
			user.setStatus(Constants.USER_STATUS_LOCK);
		}
		userDao.save(user);
		
		return user.getStatus();
	}

}