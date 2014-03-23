package org.guess.showcase.workflow.service;

import java.util.Map;

import org.activiti.engine.runtime.ProcessInstance;
import org.guess.core.service.BaseService;
import org.guess.showcase.workflow.model.Leave;

public interface LeaveService extends BaseService<Leave, Long>{

	ProcessInstance startWorkflow(Leave leave, Map<String, Object> variables);

}
