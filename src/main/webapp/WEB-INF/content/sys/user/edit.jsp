<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tool" tagdir="/WEB-INF/tags"%>
<%@ include file="/WEB-INF/content/common/characterEncoding.jsp"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" scope="page" />
<c:set var="pageTitle" value="${empty obj ? '添加用户':'修改用户' }" scope="page" />
<html>
<head>
<title>${pageTitle }</title>
<%@ include file="/WEB-INF/content/common/jquery-validation.jsp"%>
<script type="text/javascript">
	$(function(){
		App.activeMenu("sys/user/list");
	});
</script>
</head>
<body>
	<div class="page-content">
		<div class="container-fluid">
			<!-- 页面导航 -->
			<tool:navBar pageTitle="${pageTitle }"
				pageTitleContent="系统管理-用户管理-${pageTitle }" titleIcon="icon-home" />
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
							<form action="${ctx }/sys/user/edit" class="form-horizontal"
								method="post" id="form1">
								<!-- 用户ID -->
								<input type="hidden" value="${obj.id }" name="id">
								<!-- 用户创建日期 -->
								<c:if test="${not empty obj }">
									<input type="hidden" id="time" value="<fmt:formatDate value='${obj.createDate }'/>" name="createDate">
								</c:if>
								<div class="control-group">
									<label class="control-label">姓名:</label>
									<div class="controls">
										<input type="text" class="span6 m-wrap"
											validate="{required:true,minlength:2,maxlength:10}"
											name="name" value="${obj.name }" />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">登录名:</label>
									<div class="controls">
										<input type="text" class="span6 m-wrap"
											validate="{required:true,
													   isLoginName:true,
													   remote:{type:'POST',
													   		   url:'${ctx }/sys/user/isAvailable',
													   		   data:{oldValue:'${obj.loginId }'}},
													   messages:{remote:'该登录名已存在'}}"
											name="loginId" value="${obj.loginId }"
											${not empty obj ? 'readonly="readonly"':'' } />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">密码:</label>
									<div class="controls">
										<input type="password" id="passwd" class="span6 m-wrap"
											validate="{required:true,isPasswd:true}" name="passwd"
											value="${obj.passwd }" />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">重复密码:</label>
									<div class="controls">
										<input type="password" class="span6 m-wrap"
											validate="{required:true,isPasswd:true,equalTo:'#passwd'}"
											name="repasswd" value="${obj.passwd }" />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">邮箱:</label>
									<div class="controls">
										<input type="text" class="span6 m-wrap"
											validate="{required:true,email:true}" name="email"
											value="${obj.email }" />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">手机:</label>
									<div class="controls">
										<input type="text" class="span6 m-wrap"
											validate="{required:true,isMobile:true}" name="mobilePhone"
											value="${obj.mobilePhone }" />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">地址:</label>
									<div class="controls">
										<input type="text" class="span6 m-wrap"
											validate="{required:true}" name="address"
											value="${obj.address }" />
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