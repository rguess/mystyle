<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/content/common/common.jsp"%>
<html>
<head>
<title>待办任务</title>
<link href="${ctx}/assets/comp/bootstrap-paginator/DT_bootstrap.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="${ctx}/assets/comp/bootstrap-paginator/bootstrap-paginator.js"></script>
<script type="text/javascript" src="${ctx}/assets/js/page.js"></script>

<script type="text/javascript">
$(document).ready(function() {
	
	App.activeMenu("workflow/todoTasks");
	
	Page.initData(
		{
			url:"${ctx}/workflow/todoTasks/page",
			pageNo : 1,
			pageSize : 100,
			tableId : "#sample_1"
		},
		null,
		[
		 //{cName:"id",cValue:"任务ID ",noSort:true},
		 {cName:"definitionName",cValue:"流程名称",noSort:true},
		 {cName:"sponsor",cValue:"发起人",noSort:true},
		 //{cName:"taskKey",cValue:"任务Key",noSort:true},
		 {cName:"taskName",cValue:"任务名称",noSort:true},
		 //{cName:"processDefinitionId",cValue:"流程定义ID",noSort:true},
		 //{cName:"processInstanceId",cValue:"流程实例ID",noSort:true},
		 //{cName:"priority",cValue:"优先级",noSort:true},
		 {cName:"createTime",cValue:"任务创建日期",noSort:true},
		 {cName:"dueDate",cValue:"任务逾期日",noSort:true},
		 //{cName:"description",cValue:"任务描述",noSort:true},
		 {cName:"owner",cValue:"任务所属人",noSort:true},
		 {cName:"oper",cValue:"操作",noSort:true,format:function(i,value,item){
			 if(null == item.assignee){
				 return operBtn(0,{taskId : item.id,definitionKey : item.definitionKey , taskKey : item.taskKey});
			 }
			 return operBtn(1,{taskId : item.id,definitionKey : item.definitionKey , taskKey : item.taskKey});
		 }}
		 ]
	);
});

//生成签收或办理操作按钮type:0:签收,1:办理
function operBtn(type,params){
	if(type == 0){
		return $("<a href='javascript:void(0)' "
					+"data-definition-key="+params.definitionKey+" "
					+"data-task-key="+params.taskKey+" "
					+"data-task-id="+params.taskId+" "
					+"onclick='javascript:claim(this)'>签收</a>");
	}
	return $("<a href='javascript:void(0)' "
				+"data-definition-key="+params.definitionKey+" "
				+"data-task-key="+params.taskKey+" "
				+"data-task-id="+params.taskId+" "
				+"onclick='javascript:handle(this)'>办理</a>");
}

//办理
function handle(obj){
	window.location.href = "${ctx}/workflow/task/handle/"+$(obj).attr("data-definition-key")+"/"+$(obj).attr("data-task-key")+"/"+$(obj).attr("data-task-id");
}

//签收任务
function claim(obj){
	blockUI();
	$.ajax({
		type : "POST",
		url : "${ctx}/workflow/task/claim/"+$(obj).attr("data-task-id"),
		success : function(data){
			unBlockUI();
			if(data == "success"){
				App.alert("签收成功！");
				$(obj).replaceWith(operBtn(1,{taskId : $(obj).attr("data-task-id"),
											  definitionKey : $(obj).attr("data-definition-key"),
											  taskKey : $(obj).attr("data-task-key")}));
			}
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
			<tool:navBar pageTitle="图标列表" pageTitleContent="工作流程-待办" titleIcon="icon-home"/>
			<!-- 主体内容 -->
			<div class="row-fluid">
				<div class="span12">
					<div class="portlet box purple">
						<div class="portlet-title">
							<h4>
								<i class="icon-globe"></i>列表
							</h4>
							<div class="tools">
								<a href="javascript:;" class="collapse"></a><a
									href="javascript:;" class="remove"></a>
							</div>
						</div>
						<div class="portlet-body">
							<table class="table table-striped table-bordered table-hover" id="sample_1">
								
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>