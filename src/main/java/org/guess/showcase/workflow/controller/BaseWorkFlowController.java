package org.guess.showcase.workflow.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	protected HttpServletRequest request;
	
	@Autowired
	protected HttpSession session;
	
	protected static User current_user;
	
}
