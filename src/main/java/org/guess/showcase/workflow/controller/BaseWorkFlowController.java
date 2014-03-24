package org.guess.showcase.workflow.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.guess.showcase.workflow.service.activiti.WorkFlowService;
import org.guess.sys.model.User;
import org.springframework.beans.factory.annotation.Autowired;


public class BaseWorkFlowController {

	@Autowired
	protected WorkFlowService workflowService;
	
	@Autowired
	protected TaskService taskService;
	
	@Autowired
	protected RuntimeService runtimeService;
	
	@Autowired
	private RepositoryService repositoryService;

	@Autowired
	protected HttpServletRequest request;
	
	@Autowired
	protected HttpSession session;
	
	/**
	 * 当前登录用户key
	 */
	protected User current_user;
	
}
