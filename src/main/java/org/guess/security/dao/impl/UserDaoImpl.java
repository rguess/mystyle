package org.guess.security.dao.impl;

import org.guess.core.orm.hibernate.HibernateDao;
import org.guess.security.dao.UserDao;
import org.guess.security.model.User;
import org.springframework.stereotype.Repository;

@Repository
public class UserDaoImpl extends HibernateDao<User,Long> implements UserDao {

}
