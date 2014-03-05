<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tool" tagdir="/WEB-INF/tags"%>
<%@ include file="/WEB-INF/content/common/characterEncoding.jsp"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" scope="page" />
<html>
<head>
<title>资源列表</title>
<link href="${ctx}/assets/comp/jquery-ui/jquery-ui-1.10.1.custom.min.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/assets/comp/jquery-treegrid/jquery.treegrid.css" type="text/css" rel="stylesheet" />
<script src="${ctx}/assets/comp/jquery-treegrid/jquery.treegrid.js" type="text/javascript"></script>
<script src="${ctx}/assets/comp/jquery-ui/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>

<%@ include file="/WEB-INF/content/common/jquery-validation.jsp"%>

<script type="text/javascript">
	$(document).ready(function() {
		App.activeMenu("sys/resource/list");
		initTree();
	});

	/* 初始化树 */
	function initTree() {
		$.ajax({
			type : "GET",
			dataType : "json",
			url : "${ctx}/sys/resource/tree",
			success : function(data) {
				$.each(data,function(i,item){
					$("#treeBody").append(fillData(item,null));
					$.each(item.childRes,function(j,cd){
						$("#treeBody").append(fillData(cd,item.id));
						$.each(cd.childRes,function(n,m){
							$("#treeBody").append(fillData(m,cd.id));
						});
					});
				});
				$('#treeTable').treegrid();
			}
		});
	}
	
	//填充数据
	function fillData(item,pId){
		var tr = $("<tr></tr>").attr("id",item.id).addClass("treegrid-"+item.id);
		if(pId != null){
			tr.addClass("treegrid-parent-"+pId);
		}
		tr.append($("<td></td>").html(item.name));
		tr.append($("<td></td>").html(item.resString));
		tr.append($("<td></td>").html(item.icon));
		tr.append($("<td></td>").html(item.permsString));
		tr.append($("<td></td>").html(item.orderNo));
		tr.append($("<td></td>").html(item.remark));
		tr.append($("<td></td>").html($("<a href='javascript:void(0)' onclick='javascript:edit("+item.id+")'>修改</a>")));
		return tr;
	}
	
	//编辑
	function edit(id){
		$('#dialog_simple').dialog('open');
	}
</script>
</head>
<body>
	<div class="page-content">
		<div class="container-fluid">
			<!-- 页面导航 -->
			<tool:navBar pageTitle="资源列表" pageTitleContent="系统管理-资源管理-资源列表"
				titleIcon="icon-home" />
			<!-- 主体内容 -->
			<div class="row-fluid">
				<div class="span12">
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
							<table id="treeTable" class="table table-striped table-bordered table-hover tree">
								<thead>
									<tr>
										<th>名称</th>
										<th>资源串</th>
										<th>图标</th>
										<th>权限标识</th>
										<th>排序编号</th>
										<th>备注</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody id="treeBody">
									
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable" tabindex="-1" role="dialog" aria-describedby="dialog_simple" aria-labelledby="ui-id-5" style="display: none; position: absolute;">
			<div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix">
				<span id="ui-id-5" class="ui-dialog-title">Dialog Simple Title</span>
				<button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="close">
				<span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span>
				<span class="ui-button-text">close</span>
				</button>
			</div>
			<div id="dialog_simple" class="ui-dialog-content ui-widget-content">
	        	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
	    	</div>
	    	<div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix">
		    	<div class="ui-dialog-buttonset">
			    	<button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false">
			    		<span class="ui-button-text">Ok</span>
			    	</button>
			    	<button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false">
			    		<span class="ui-button-text">Cancel</span>
			    	</button>
		    	</div>
	    	</div>
	    	<div class="ui-resizable-handle ui-resizable-n" style="z-index: 90;">
	    	</div>
	    	<div class="ui-resizable-handle ui-resizable-e" style="z-index: 90;">
	    	</div><div class="ui-resizable-handle ui-resizable-s" style="z-index: 90;">
	    	</div><div class="ui-resizable-handle ui-resizable-w" style="z-index: 90;">
	    	</div><div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 90;">
	    	</div><div class="ui-resizable-handle ui-resizable-sw" style="z-index: 90;"></div>
	    	<div class="ui-resizable-handle ui-resizable-ne" style="z-index: 90;"></div>
	    	<div class="ui-resizable-handle ui-resizable-nw" style="z-index: 90;"></div></div>
	</div>
</body>
</html>