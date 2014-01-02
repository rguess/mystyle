<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tool" tagdir="/WEB-INF/tags" %>
<%@ include file="/WEB-INF/content/common/characterEncoding.jsp"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" scope="page" />
<html>
<head>
<title>用户列表</title>
<script type="text/javascript" src="${ctx}/assets/comp/bootstrap-paginator/bootstrap-paginator.js"></script>
<script type="text/javascript" src="${ctx}/assets/js/page.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	Page.initData(
		{
			url:"${ctx}/sys/user/page",
			pageNo : 1,
			pageSize : 10,
			tableId : "#sample_1"
		},
		null,
		[{cName:"name",cValue:"姓名"},
		 {cName:"email",cValue:"邮箱"},
		 {cName:"loginId",cValue:"登录名"},
		 {cName:"mobilePhone",cValue:"手机"},
		 {cName:"address",cValue:"地址"}
		 ]
	);
	
	//$("#sample_1").page(null);
	/* $('#sample_1').dataTable({
		"bServerSide": true,
		"sAjaxSource": "${ctx}/sys/user/datas"
	}); */
});
</script>
</head>
<body>
	<div class="page-content">
		<div class="container-fluid">
			<!-- 页面导航 -->
			<tool:navBar pageTitle="用户列表" pageTitleContent="系统管理-用户管理-用户列表" titleIcon="icon-home"/>
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
							<div class="clearfix">
								<div class="btn-group">
									<a class="btn green" href="${ctx}/sys/user/create">
										添加 <i class="icon-plus"></i>
									</a>
								</div>
								<!-- <div class="btn-group pull-right">
									<button class="btn dropdown-toggle" data-toggle="dropdown">
										Tools <i class="icon-angle-down"></i>
									</button>
									<ul class="dropdown-menu">
										<li><a href="#">Print</a></li>
										<li><a href="#">Save as PDF</a></li>
										<li><a href="#">Export to Excel</a></li>
									</ul>
								</div> -->
							</div>
							<table class="table table-striped table-bordered table-hover" id="sample_1">
								<!-- <thead>
									<tr>
										<th class="sorting_desc">姓名</th>
										<th>邮箱</th>
										<th>性别</th>
										<th>地址</th>
										<th class="span2">操作</th>
									</tr>
								</thead>
								<tbody>
									<tr><td>1</td><td>2</td><td>2</td><td>2</td><td>3</td>
										<td>
											<div class="btn-group mini">
												<a class="btn green mini" href="#" data-toggle="dropdown">
													<i class="icon-user"></i> 
													操作
													<i class="icon-angle-down"></i>
												</a>
												<ul class="dropdown-menu">
													<li><a href="#"><i class="icon-pencil"></i>修改</a></li>
													<li><a href="#"><i class="icon-trash"></i>删除</a></li>
													<li><a href="#"><i class="icon-search"></i>查看</a></li>
												</ul>
											</div>
										</td>
									</tr>
								</tbody> -->
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>