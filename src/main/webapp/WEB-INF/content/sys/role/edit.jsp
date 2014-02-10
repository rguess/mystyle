<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tool" tagdir="/WEB-INF/tags"%>
<%@ include file="/WEB-INF/content/common/characterEncoding.jsp"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" scope="page" />
<c:set var="pageTitle" value="${empty obj ? '添加角色':'修改角色' }" scope="page" />
<html>
<head>
<title>${pageTitle }</title>
<%@ include file="/WEB-INF/content/common/jquery-validation.jsp"%>
</head>
<body>
	<div class="page-content">
		<div class="container-fluid">
			<!-- 页面导航 -->
			<tool:navBar pageTitle="${pageTitle }"
				pageTitleContent="系统管理-角色管理-${pageTitle }" titleIcon="icon-home" />
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
							<form action="${ctx }/sys/role/edit" class="form-horizontal"
								method="post" id="form1">
								<!-- 角色ID -->
								<input type="hidden" value="${obj.id }" name="id">
								<div class="control-group">
									<label class="control-label">角色名:</label>
									<div class="controls">
										<input type="text" class="span6 m-wrap"
											validate="{required:true,
													   isLoginName:true,
													   remote:{type:'POST',
													   		   url:'${ctx }/sys/role/isAvailable',
													   		   data:{oldValue:'${obj.loginId }'}},
													   messages:{remote:'该角色名称已存在'}}"
											name="name" value="${obj.name }" />
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