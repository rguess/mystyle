package org.guess.showcase.workflow.controller;

import java.util.HashMap;
import java.util.Map;

import org.activiti.engine.runtime.ProcessInstance;
import org.guess.core.Constants;
import org.guess.showcase.workflow.model.Leave;
import org.guess.showcase.workflow.service.LeaveService;
import org.guess.sys.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/workflow/leave")
public class LeaveController extends BaseWorkFlowController{

	@Autowired
	private LeaveService leaveService;

	@RequestMapping(method = RequestMethod.GET, value = "/apply")
	public ModelAndView gotoProcessPage(ModelAndView mav) {
		mav.setViewName("/workflow/leave/apply");
		return mav;
	}

	@RequestMapping(method = RequestMethod.POST, value = "/start")
	public ModelAndView start(Leave leave, ModelAndView mav) throws Exception {
		User u = (User) session.getAttribute(Constants.CURRENT_USER);
		leave.setSponsor(u);
		Map<String, Object> variables = new HashMap<String, Object>();
		ProcessInstance processInstance = leaveService.startWorkflow(leave,
				variables);
		System.out.println(processInstance.getId());
		mav.setViewName("redirect:/workflow/process");
		return mav;
	}

}
