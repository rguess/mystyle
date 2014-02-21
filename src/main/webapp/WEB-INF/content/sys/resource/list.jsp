<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tool" tagdir="/WEB-INF/tags" %>
<%@ include file="/WEB-INF/content/common/characterEncoding.jsp"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" scope="page" />
<html>
<head>
<title>资源列表</title>
<link href="${ctx}/assets/comp/jquery-ztree/zTreeStyle.css" type="text/css" rel="stylesheet" />
<script src="${ctx}/assets/comp/jquery-ztree/jquery.ztree.core-3.5.min.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
	App.activeMenu("sys/resource/list");
	initTree();
});

function initTree(){
	var setting = {
		data :{
			key:{
				children:"childRes",
				name:"name"
			},
		},
		callback:{
			onClick :function(event, treeId, treeNode){
				console.log(treeNode);
				alert(treeNode.tId + ", " + treeNode.name);
			}
		}
	};
	$.ajax({
		type : "GET",
		dataType : "json",
		url : "${ctx}/sys/resource/tree",
		success : function(data){
			$.fn.zTree.init($("#ztree"), setting, data);
		}
	});
}
</script>
</head>
<body>
	<div class="page-content">
		<div class="container-fluid">
			<!-- 页面导航 -->
			<tool:navBar pageTitle="资源列表" pageTitleContent="系统管理-资源管理-资源列表" titleIcon="icon-home"/>
			<!-- 主体内容 -->
			<div class="row-fluid">
				<div class="span4">
					<div class="portlet box green">
						<div class="portlet-title">
							<h4>
								<i class="icon-globe"></i>资源树
							</h4>
							<div class="tools">
								<a href="javascript:;" class="collapse"></a><a
									href="javascript:;" class="remove"></a>
							</div>
						</div>
						<div class="portlet-body">
							<div id="ztree" class="ztree">
								
							</div>
						</div>
					</div>
				</div>
				<div class="span8">
					<div class="portlet box blue tabbable">
						<div class="portlet-title">
							<h4>
								<i class="icon-reorder"></i>操作
							</h4>
						</div>
						<div class="portlet-body">
							<div class="tabbable portlet-tabs">
								<ul class="nav nav-tabs">
									<li><a href="#portlet_tab3" data-toggle="tab">Tab 3</a></li>
									<li><a href="#portlet_tab2" data-toggle="tab">Tab 2</a></li>
									<li class="active"><a href="#portlet_tab1" data-toggle="tab">Tab 1</a></li>
								</ul>
								<div class="tab-content">
									<div class="tab-pane active" id="portlet_tab1">
										1
									</div>
									<div class="tab-pane" id="portlet_tab2">
										2
									</div>
									<div class="tab-pane" id="portlet_tab3">
										3
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>