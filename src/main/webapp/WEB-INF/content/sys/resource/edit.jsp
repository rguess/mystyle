<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tool" tagdir="/WEB-INF/tags"%>
<%@ include file="/WEB-INF/content/common/characterEncoding.jsp"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" scope="page" />
<c:set var="pageTitle" value="${empty obj ? '添加资源':'修改资源' }" scope="page" />
<html>
<head>
<title>${pageTitle }</title>
<%@ include file="/WEB-INF/content/common/jquery-validation.jsp"%>
<script type="text/javascript">
	$(function(){
		App.activeMenu("sys/resource/list");
	});
</script>
</head>
<body>
	<div class="page-content">
		<div class="container-fluid">
			<!-- 页面导航 -->
			<tool:navBar pageTitle="${pageTitle }"
				pageTitleContent="系统管理-资源管理-${pageTitle }" titleIcon="icon-home" />
			<!-- 主体内容 -->
			<div class="row-fluid">
				<div class="span12">
					<div class="portlet box blue">
						<div class="portlet-title">
							<h4>
								<i class="icon-reorder"></i>请填写表单
							</h4>
							<div class="tools">
								<a href="javascript:;" class="collapse"></a> <a
									href="javascript:;" class="remove"></a>
							</div>
						</div>
						<div class="portlet-body form">
							<form action="${ctx }/sys/resource/edit" class="form-horizontal"
								method="post" id="form1">
								<!-- 资源 -->
								<input type="hidden" value="${obj.id }" name="id">
								<input type="hidden" value="${obj.parent.id }" name="parent.id">
								<!-- 资源名称 -->
								<div class="control-group">
									<label class="control-label">名称：</label>
									<div class="controls">
										<input type="text" class="span6 m-wrap"
											validate="{required:true,byteRangeLength:[4,20]}"
											name="name" value="${obj.name }" />
									</div>
								</div>
								<c:if test="${not empty obj.parent }">
									<div class="control-group">
										<label class="control-label">父节点：</label>
										<div class="controls">
											<input type="text" class="span6 m-wrap" value="${obj.parent.name }" />
										</div>
									</div>
								</c:if>
								<!-- 资源图标 -->
								<div class="control-group">
									<label class="control-label">图标：</label>
									<div class="controls">
										<input type="text" class="span6 m-wrap"
											name="icon" value="${obj.icon }" />
									</div>
								</div>
								<!-- 资源url -->
								<div class="control-group">
									<label class="control-label">资源url：</label>
									<div class="controls">
										<input type="text" class="span6 m-wrap"
											validate="{required:true,isChinese:true}"
											name="resString" value="${obj.resString }" />
									</div>
								</div>
								<!-- 权限标识 -->
								<div class="control-group">
									<label class="control-label">权限标识：</label>
									<div class="controls">
										<input type="text" class="span6 m-wrap"
											validate="{required:true,isChinese:true}"
											name="permsString" value="${obj.permsString }" />
									</div>
								</div>
								<!-- 序号 -->
								<div class="control-group">
									<label class="control-label">序号：</label>
									<div class="controls">
										<input type="text" class="span6 m-wrap"
											validate="{required:true,digits:true}"
											name="orderNo" value="${obj.orderNo }" />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">备注:</label>
									<div class="controls">
										<textarea rows="3" cols="6" class="span6 m-wrap" name="remark">${obj.remark }</textarea>
									</div>
								</div>
								<div class="form-actions">
									<button type="submit" class="btn blue">提交</button>
									<button type="reset" class="btn">重置</button>
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