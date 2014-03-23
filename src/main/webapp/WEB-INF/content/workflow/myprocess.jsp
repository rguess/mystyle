<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/content/common/common.jsp"%>
<html>
<head>
<title>我的流程</title>
<link href="${ctx}/assets/comp/bootstrap-paginator/DT_bootstrap.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="${ctx}/assets/comp/bootstrap-paginator/bootstrap-paginator.js"></script>
<script type="text/javascript" src="${ctx}/assets/js/page.js"></script>

<script type="text/javascript">
$(document).ready(function() {
	
	App.activeMenu("workflow/myprocess");
	
	Page.initData(
		{
			url:"${ctx}/workflow/myprocess/page",
			pageNo : 1,
			pageSize : 10,
			tableId : "#sample_1"
		},
		null,
		[{cName:"definitionName",cValue:"流程名称 ",noSort:true},
		 {cName:"taskname",cValue:"当前节点 ",noSort:true},
		 {cName:"definitionKey",cValue:"key",noSort:true},
		 {cName:"instanceId",cValue:"实例ID",noSort:true},
		 {cName:"definitionVersion",cValue:"版本号",noSort:true}
		 ]
	);
});

function doQuery(){
	
}
</script>
</head>
<body>
	<div class="page-content">
		<div class="container-fluid">
			<!-- 页面导航 -->
			<tool:navBar pageTitle="图标列表" pageTitleContent="工作流程-我的待办" titleIcon="icon-home"/>
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