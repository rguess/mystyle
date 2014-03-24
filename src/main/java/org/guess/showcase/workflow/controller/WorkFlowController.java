package org.guess.showcase.workflow.controller;

import java.util.Map;

import org.guess.core.Constants;
import org.guess.core.orm.Page;
import org.guess.core.orm.PageRequest;
import org.guess.sys.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * 工作流通用处理Controller
 * @author guess
 *
 */
@Controller
@RequestMapping("/workflow")
public class WorkFlowController extends BaseWorkFlowController {

	/**
	 * 跳转到选择发起流程页面
	 * 
	 * @param mav
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(method = RequestMethod.GET, value = "/process")
	public ModelAndView gotoProcessPage(ModelAndView mav) throws Exception {
		mav.setViewName("/workflow/process");
		return mav;
	}

	/**
	 * 跳转到我发起的流程刘表页面
	 * 
	 * @param mav
	 * @return
	 */
	@RequestMapping(method = RequestMethod.GET, value = "/myprocess")
	public ModelAndView getMyProcessPage(ModelAndView mav) {
		mav.setViewName("/workflow/myprocess");
		return mav;
	}

	/**
	 * 获取当前用户的流程数据
	 * 
	 * @return json
	 */
	@RequestMapping(value = "/myprocess/page")
	@ResponseBody
	public Map<String, Object> myprocess() {
		current_user = (User) session.getAttribute(Constants.CURRENT_USER);
		Page<Map<String, String>> page = workflowService.pageProcessceByUserId(current_user.getLoginId(),
				new Page<Map<String, String>>(new PageRequest()));
		return page.returnMap();
	}

	/**
	 * 跳转到待办任务页面
	 * 
	 * @param mav
	 * @return
	 */
	@RequestMapping(method = RequestMethod.GET, value = "/todoTasks")
	public ModelAndView toTasks(ModelAndView mav) {
		mav.setViewName("/workflow/toTasks");
		return mav;
	}

	/**
	 * 获取待办任务数据
	 * 
	 * @return
	 */
	@RequestMapping(value = "/todoTasks/page")
	@ResponseBody
	public Map<String, Object> toTasks() {
		current_user = (User) session.getAttribute(Constants.CURRENT_USER);
		Page<Map<String, String>> page = workflowService.getTodoTasks(current_user.getLoginId(),
				new Page<Map<String, String>>(new PageRequest(1, 100)));
		return page.returnMap();
	}

	/**
	 * 签收任务
	 * 
	 * @param taskId
	 * @return
	 */
	@RequestMapping(value = "/task/claim/{id}")
	@ResponseBody
	public String claim(@PathVariable("id") String taskId) {
		current_user = (User) session.getAttribute(Constants.CURRENT_USER);
		taskService.claim(taskId, current_user.getLoginId());
		return "success";
	}

	/**
	 * 动态的跳转到流程办理页面
	 * @param mav
	 * @param taskId
	 * @param definitionKey
	 * @param taskKey
	 * @return
	 */
	@RequestMapping(value = "/task/handle/{definitionKey}/{taskKey}/{taskId}")
	public ModelAndView handleTask(ModelAndView mav,
			@PathVariable("definitionKey") String definitionKey, 
			@PathVariable("taskKey") String taskKey,
			@PathVariable("taskId") String taskId) {
				
		mav.setViewName("/workflow/"+definitionKey+"/"+taskKey);
		mav.addObject("taskId",taskId);
		return mav;

	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
