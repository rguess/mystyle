<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tool" tagdir="/WEB-INF/tags" %>
<%@ include file="/WEB-INF/content/common/characterEncoding.jsp"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" scope="page"/>
<c:choose>
	<c:when test="${obj.id == null}">
		<c:set var="pageTitle" value="添加用户" scope="page"/>
	</c:when>
	<c:otherwise>
		<c:set var="pageTitle" value="修改用户" scope="page"/>
	</c:otherwise>
</c:choose>
<html>
<head>
<title>${pageTitle }</title>
<%@ include file="/WEB-INF/content/common/jquery-validation.jsp"%>
</head>
<body>
	<div class="page-content">
		<div class="container-fluid">
			<!-- 页面导航 -->
			<tool:navBar pageTitle="${pageTitle }" pageTitleContent="系统管理-用户管理-${pageTitle }" titleIcon="icon-home"/>
			<!-- 主体内容 -->
			<div class="row-fluid">
				<div class="span12">
					<div class="portlet box blue">
						<div class="portlet-title">
							<h4>
								<i class="icon-reorder"></i>请填写表单
							</h4>
							<div class="tools">
								<a href="javascript:;" class="collapse"></a> 
								<a href="javascript:;" class="remove"></a>
							</div>
						</div>
						<div class="portlet-body form">
							<form action="${ctx }/sys/user/edit" class="form-horizontal"
								method="post" id="form1">
								<div class="control-group">
									<label class="control-label">姓名:</label>
									<div class="controls">
										<input type="text"
											class="span6 m-wrap"
											validate="{required:true,minlength:2,maxlength:10}"
											name="name" />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">登录名:</label>
									<div class="controls">
										<input type="text" class="span6 m-wrap" validate="{required:true,isLoginName:true,remote:'${ctx }/sys/user/isAvailable',messages:{remote:'该登录名已存在'}}" name="loginId" />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">密码:</label>
									<div class="controls">
										<input id="passwd" type="password" class="span6 m-wrap" validate="{required:true,isPasswd:true}" name="passwd" />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">重复密码:</label>
									<div class="controls">
										<input type="password" class="span6 m-wrap" validate="{required:true,isPasswd:true,equalTo:'#passwd'}" name="repasswd" />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">邮箱:</label>
									<div class="controls">
										<input type="text" class="span6 m-wrap" validate="{required:true,email:true}" name="email" />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">手机:</label>
									<div class="controls">
										<input type="text" class="span6 m-wrap" validate="{required:true,isMobile:true}" name="mobilePhone" />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">地址:</label>
									<div class="controls">
										<input type="text" class="span6 m-wrap" validate="{required:true}" name="address" />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">备注:</label>
									<div class="controls">
										<textarea rows="3" cols="6" class="span6 m-wrap" name="remark"></textarea>
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