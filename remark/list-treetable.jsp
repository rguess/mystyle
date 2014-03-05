<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tool" tagdir="/WEB-INF/tags"%>
<%@ include file="/WEB-INF/content/common/characterEncoding.jsp"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" scope="page" />
<html>
<head>
<title>资源列表</title>
<link href="${ctx}/assets/comp/jquery-ztree/zTreeStyle.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/assets/comp/jquery-treeTable/jquery.treetable.css" type="text/css" rel="stylesheet" />
<script src="${ctx}/assets/comp/jquery-ztree/jquery.ztree.core-3.5.min.js" type="text/javascript"></script>
<script src="${ctx}/assets/comp/jquery-treeTable/jquery.treetable.js" type="text/javascript"></script>
<%@ include file="/WEB-INF/content/common/jquery-validation.jsp"%>
<script type="text/javascript">
	$(document).ready(function() {
		App.activeMenu("sys/resource/list");
		initTree();
	});

	/* 初始化树 */
	function initTree() {

		var option = {
			expandLevel : 2,
			expandable: true
		};

		var setting = {
			data : {
				key : {
					children : "childRes",
					name : "name"
				},
			},
			callback : {
				onClick : nodeClickCallBack
			}
		};
		$.ajax({
			type : "GET",
			dataType : "json",
			url : "${ctx}/sys/resource/tree",
			success : function(data) {
//				$.fn.zTree.init($("#ztree"), setting, data);
				console.log(data);
				$.each(data,function(i,item){
					var tr = $("<tr></tr>").attr("id",item.id).attr("data-tt-id",item.id);
					tr.append($("<td></td>").append($("<span></span>").attr("controller","true").html(item.name)));
					tr.append($("<td></td>").html(item.resString));
					tr.append($("<td></td>").html(item.icon));
					tr.append($("<td></td>").html(item.permsString));
					tr.append($("<td></td>").html(item.orderNo));
					$("#treeBody").append(tr);
					
					$.each(item.childRes,function(j,cd){
						var ctr = $("<tr></tr>").attr("id",cd.id).attr("data-tt-id",cd.id).attr("data-tt-parent-id",item.id);
						ctr.append($("<td></td>").append($("<span></span>").attr("controller","true").html(cd.name)));
						ctr.append($("<td></td>").html(cd.resString));
						ctr.append($("<td></td>").html(cd.icon));
						ctr.append($("<td></td>").html(cd.permsString));
						ctr.append($("<td></td>").html(cd.orderNo));
						$("#treeBody").append(ctr);
					});
				});
				$('#treeTable').treetable(option);
			}
		});
	}

	/* 保存当前操作节点 */
	var currentNode;

	/* 节点点击事件 */
	function nodeClickCallBack(event, treeId, treeNode) {
		console.log(treeNode);
		currentNode = treeNode;
		$("#detail_name").text(treeNode.name);
		$("#detail_parentName").text(treeNode.getParentNode().name);
		$("#detail_url").text(treeNode.resString);
		$("#detail_icon").text(treeNode.icon);
		$("#detail_remark").text(treeNode.remark);
		$("#detail_orderNo").text(treeNode.orderNo);
	}

	/* 修改按钮点击 */
	function editClick() {
		$("#edit_id").val(currentNode.id);
		$("#edit_name").val(currentNode.name);
		$("#edit_parentName").val(currentNode.getParentNode().name);
		$("#edit_url").val(currentNode.resString);
		$("#edit_icon").val(currentNode.icon);
		$("#edit_orderNo").val(currentNode.orderNo);
		$("#edit_remark").val(currentNode.remark);
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
							<!-- <div id="ztree" class="ztree">
								
							</div> -->
							<table id="treeTable" class="table table-striped table-bordered table-hover">
								<thead>
									<tr>
										<th>名称</th>
										<th>资源串</th>
										<th>图标</th>
										<th>权限标识</th>
										<th>排序编号</th>
									</tr>
								</thead>
								<tbody id="treeBody">
									
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div>
					<div class="tabbable tabbable-custom">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#tab_1_detail" data-toggle="tab">详细</a></li>
							<li><a href="#tab_1_modify"
								onclick="javascript:editClick();" data-toggle="tab">修改</a></li>
							<li><a href="#tab_1_add" data-toggle="tab">添加</a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="tab_1_detail">
								<div class="form-horizontal form-view">
									<div class="control-group">
										<label class="control-label">菜单名称：</label>
										<div class="controls">
											<span class="text" id="detail_name"></span>
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">父菜单名称：</label>
										<div class="controls">
											<span class="text" id="detail_parentName"></span>
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">url：</label>
										<div class="controls">
											<span class="text" id="detail_url"></span>
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">图标：</label>
										<div class="controls">
											<span class="text" id="detail_icon"></span>
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">序号：</label>
										<div class="controls">
											<span class="text" id="detail_orderNo"></span>
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">备注：</label>
										<div class="controls">
											<span class="text" id="detail_remark"></span>
										</div>
									</div>
								</div>
							</div>
							<div class="tab-pane" id="tab_1_modify">
								<form action="${ctx }/sys/resource/edit" class="form-horizontal"
									method="post" id="form1">
									<!-- 资源 -->
									<input type="hidden" value="" name="id" id="edit_id">
									<!-- 资源名称 -->
									<div class="control-group">
										<label class="control-label">名称：</label>
										<div class="controls">
											<input type="text" class="span6 m-wrap"
												validate="{required:true}" name="name" value=""
												id="edit_name" />
										</div>
									</div>
									<!-- 父菜单 -->
									<div class="control-group">
										<label class="control-label">父菜单：</label>
										<div class="controls">
											<input type="text" class="span6 m-wrap"
												validate="{required:true}" name="name" value=""
												id="edit_parentName" />
										</div>
									</div>
									<!-- 资源url -->
									<div class="control-group">
										<label class="control-label">资源url：</label>
										<div class="controls">
											<input type="text" class="span6 m-wrap"
												validate="{required:true}" name="resString" value=""
												id="edit_url" />
										</div>
									</div>
									<!-- 资源图标 -->
									<div class="control-group">
										<label class="control-label">图标：</label>
										<div class="controls">
											<input type="text" class="span6 m-wrap" name="icon" value=""
												id="edit_icon" />
										</div>
									</div>
									<!-- 序号 -->
									<div class="control-group">
										<label class="control-label">序号：</label>
										<div class="controls">
											<input type="text" class="span6 m-wrap"
												validate="{required:true}" name="orderNo" value=""
												id="edit_orderNo" />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">备注:</label>
										<div class="controls">
											<textarea rows="3" cols="6" class="span6 m-wrap"
												name="remark" id="edit_remark"></textarea>
										</div>
									</div>
									<div class="form-actions">
										<button type="submit" class="btn blue">提交</button>
										<button type="reset" class="btn">重置</button>
									</div>
								</form>
							</div>
							<div class="tab-pane" id="tab_1_add"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>