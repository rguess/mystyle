package org.guess.showcase.workflow.service.activiti;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.activiti.engine.HistoryService;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.runtime.ProcessInstanceQuery;
import org.activiti.engine.task.Task;
import org.guess.core.orm.Page;
import org.guess.core.utils.DateUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 工作流相关service
 * 
 * @author guess
 */
@Service
public class WorkFlowService {

	protected Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	private RuntimeService runtimeService;

	@Autowired
	private RepositoryService repositoryService;

	@Autowired
	private HistoryService historyService;

	@Autowired
	private TaskService taskService;

	/**
	 * 根据用户ID获取流程实例和流程定义
	 * 
	 * @param userId
	 */
	public Page<Map<String, String>> pageProcessceByUserId(String id,
			Page<Map<String, String>> page) {
		List<Map<String, String>> list = new ArrayList<Map<String, String>>();
		// 读取流程实例
		ProcessInstanceQuery query = runtimeService
				.createProcessInstanceQuery().involvedUser(id);
		long count = query.count();
		List<ProcessInstance> instances = query.listPage(page.getPageNo() - 1,
				page.getPageSize());
		for (ProcessInstance instance : instances) {
			Map<String, String> map = new HashMap<String, String>();
			// 读取流程定义对象
			ProcessDefinition definition = this.getDefinitionById(instance.getProcessDefinitionId());
			// 读取任务对象
			Task task = taskService.createTaskQuery()
					.processInstanceId(instance.getId()).singleResult();

			map.put("taskname", task.getName());
			map.put("instanceId", instance.getId());
			map.put("definitionName", definition.getName());
			map.put("definitionKey", definition.getKey());
			map.put("definitionVersion", definition.getVersion() + "");
			list.add(map);
		}
		page.setTotalItems(count);
		page.setResult(list);
		return page;
	}

	/**
	 * 待办
	 * 
	 * @param string
	 * @param page
	 * @return
	 */
	public Page<Map<String, String>> getTodoTasks(String LoginId,
			Page<Map<String, String>> page) {
		List<Task> tasks = new ArrayList<Task>();
		// 已签收任务
		List<Task> list1 = taskService.createTaskQuery().taskAssignee(LoginId)
				.active().orderByTaskId().desc().list();
		// 未签收的任务
		List<Task> list2 = taskService.createTaskQuery()
				.taskCandidateUser(LoginId).active().orderByTaskId().desc()
				.list();
		tasks.addAll(list1);
		tasks.addAll(list2);
		List<Map<String, String>> list = new ArrayList<Map<String, String>>();
		for (Task task : tasks) {
			// 读取流程定义对象
			ProcessDefinition definition = this.getDefinitionById(task.getProcessDefinitionId());
			ProcessInstance instance  = this.getInstanceById(task.getProcessInstanceId());
			
			Map<String, String> map = new HashMap<String, String>();
			map.put("id", task.getId());
			map.put("taskDefinitionKey", task.getTaskDefinitionKey());
			map.put("taskDefinitionName", definition.getName());
			map.put("name", task.getName());
			map.put("processDefinitionId", task.getProcessDefinitionId());
			map.put("processInstanceId", task.getProcessInstanceId());
			map.put("priority", task.getPriority() + "");
			map.put("createTime", DateUtil.format(task.getCreateTime()));
			map.put("dueDate", DateUtil.format(task.getDueDate()));
			map.put("description", task.getDescription());
			map.put("owner", task.getOwner());
			map.put("assignee", task.getAssignee());
			list.add(map);
		}
		page.setTotalItems(tasks.size());
		page.setResult(list);
		return page;
	}

	/**
	 * 根据流程定义ID读取流程定义对象
	 * 
	 * @param id
	 * @return
	 */
	private ProcessDefinition getDefinitionById(String id) {
		ProcessDefinition definition = repositoryService
				.createProcessDefinitionQuery().processDefinitionId(id)
				.singleResult();
		return definition;
	}

	/**
	 * 根据流程实例ID读取流程实例
	 * @param id
	 * @return
	 */
	private ProcessInstance getInstanceById(String id) {
		ProcessInstance instance = runtimeService
				.createProcessInstanceQuery().processInstanceId(id).singleResult();
		return instance;
	}

}
