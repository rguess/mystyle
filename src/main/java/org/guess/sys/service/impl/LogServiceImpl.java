package org.guess.sys.service.impl;

import org.guess.core.service.BaseServiceImpl;
import org.guess.sys.dao.LogDao;
import org.guess.sys.model.Log;
import org.guess.sys.service.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LogServiceImpl extends BaseServiceImpl<Log, Long, LogDao> implements LogService {

	@Autowired
	public LogDao logDao;

}