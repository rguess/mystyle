<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/content/common/common.jsp"%>
<html>
<head>
<title>发起请假流程</title>
<%@ include file="/WEB-INF/content/common/datepicker.jsp"%>
<%@ include file="/WEB-INF/content/common/jquery-validation.jsp"%>
<script type="text/javascript">

	var taskId = "${taskId}";
	
	$(function(){
		App.activeMenu("workflow/todoTasks");
		init();
	});
	
	function init(){
		blockUI();
		$.ajax({
			type : "GET",
			url : "${ctx}/workflow/leave/showByTaskId",
			data :{taskId:taskId},
			success : function(data){
				$("#sponsor").html(data.userName);
				$("#leaveType").html(data.leave.leaveType);
				$("#startTime").html(new Date(data.leave.startTime).format("yyyy-MM-dd"));
				$("#endTime").html(new Date(data.leave.endTime).format("yyyy-MM-dd"));
				$("#leaveDays").html(data.leave.leaveDays);
				$("#leaveReason").html(data.leave.reason);
				$("#leaveId").val(data.leave.id);
				unBlockUI();
			},
			error : function(error) {
				unBlockUI();
			}
		});
	}
	
</script>
</head>
<body>
	<div class="page-content">
		<div class="container-fluid">
			<!-- 页面导航 -->
			<tool:navBar pageTitle="部门经理审批"
				pageTitleContent="工作流程-请假-部门经理审批" titleIcon="icon-home" />
			<!-- 主体内容 -->
			<div class="row-fluid">
				<div class="span12">
					<div class="portlet box blue">
						<div class="portlet-title">
							<h4>
								<i class="icon-reorder"></i>审批
							</h4>
							<div class="tools">
								<a href="javascript:;" class="collapse"></a> <a
									href="javascript:;" class="remove"></a>
							</div>
						</div>
						<div class="portlet-body form">
							<div class="form-horizontal form-view">
								<h3 class="form-section">请假信息</h3>
								<div class="span12">
									<div class="control-group">
										<label class="control-label" for="firstName">流程发起人：</label>
										<div class="controls">
											<span class="text" id="sponsor"></span>
										</div>
									</div>
								</div>
								<div class="span12">
									<div class="control-group">
										<label class="control-label" for="firstName">请假类型：</label>
										<div class="controls">
											<span class="text" id="leaveType"></span>
										</div>
									</div>
								</div>
								<div class="span12">
									<div class="control-group">
										<label class="control-label" for="firstName">开始日期：</label>
										<div class="controls">
											<span class="text" id="startTime"></span>
										</div>
									</div>
								</div>
								<div class="span12">
									<div class="control-group">
										<label class="control-label" for="firstName">结束日期：</label>
										<div class="controls">
											<span class="text" id="endTime"></span>
										</div>
									</div>
								</div>
								<div class="span12">
									<div class="control-group">
										<label class="control-label" for="firstName">请假天数：</label>
										<div class="controls">
											<span class="text" id="leaveDays"></span>
										</div>
									</div>
								</div>
								
								<div class="span12">
									<div class="control-group">
										<label class="control-label" for="firstName">原因：</label>
										<div class="controls">
											<span class="text" id="leaveReason"></span>
										</div>
									</div>
								</div>
							</div>
							<form action="${ctx }/workflow/leave/deptLeaderAudit" class="form-horizontal" method="post" id="form1">
								<input type="hidden" value="" name="leaveId" id="leaveId">
								<input type="hidden" value="${taskId }" name="taskId">
								<div class="control-group">
									<label class="control-label">审批意见:</label>
									<div class="controls">
										<textarea rows="3" cols="6" class="span6 m-wrap" 
											validate="{required:true}"
											name="depAuditOpinion"></textarea>
									</div>
								</div>
								<div class="form-actions">
									<button type="submit" class="btn blue" name="deptLeaderPass" value="true">同意申请</button>
									<button type="submit" class="btn red" name="deptLeaderPass" value="false">驳回请求</button>
									<a class='btn purple' href="${header.Referer }">返回</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>