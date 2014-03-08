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
		blockUI();
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
				unBlockUI();
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
		tr.append($("<td></td>").html($("<i class="+item.icon+"></i>")));
		tr.append($("<td></td>").html(item.permsString));
		tr.append($("<td></td>").html(item.orderNo));
		tr.append($("<td></td>").html(item.remark));
		tr.append($("<td></td>").html(operBtn(item.id)));
		return tr;
	}
	
	//生产下拉操作按钮
	function operBtn(id){
		return App.initDropDownBtn({
			icon : "icon-user",
			name : "操作",
			group : [{clickFn : "edit("+id+")",name : "修改",icon : "icon-pencil"},
					 {clickFn : "del("+id+")",name : "删除",icon : "icon-trash"},
				 	 {clickFn : "show("+id+")",name : "查看",icon : "icon-search"},
					 {clickFn : "addChlid("+id+")",name : "新增下级",icon : "icon-plus"}
			         ]
		});
	}
	
	//编辑
	function edit(id){
		window.location.href = ctx+"/sys/resource/update/"+id;
	}
	
	//删除
	function del(id){
		window.location.href = ctx+"/sys/resource/delete/"+id;
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
							<div class="clearfix">
								<div class="btn-group">
									<a class="btn green" href="${ctx}/sys/resource/create">
										添加 <i class="icon-plus"></i>
									</a>
								</div>
							</div>
							<div>
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
		</div>
	</div>
</body>
</html>