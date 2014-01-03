<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<title>bootstrap:<sitemesh:title/></title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />

<link href="${ctx}/assets/comp/bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/assets/css/metro.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/assets/comp/bootstrap/css/bootstrap-responsive.min.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/assets/comp/font-awesome/css/font-awesome.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/assets/css/style.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/assets/css/style_responsive.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/assets/css/style_default.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/assets/comp/gritter/css/jquery.gritter.css" type="text/css" rel="stylesheet" />
<link rel="shortcut icon" href="${ctx}/assets/favicon.ico" />

<script src="${ctx}/assets/js/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="${ctx}/assets/comp/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<!--[if lt IE 9]>
<script src="${ctx}/assets/js/excanvas.js"></script>
<script src="${ctx}/assets/js/respond.js"></script>	
<![endif]-->
<script src="${ctx}/assets/js/jquery.cookie.js"></script>
<script src="${ctx}/assets/comp/breakpoints/breakpoints.js" type="text/javascript" ></script>
<script src="${ctx}/assets/js/app.js"></script>
<script>
	//设置路劲
	var ctx = "${ctx}";
	jQuery(document).ready(function() {
		//初始化
		App.init();
		//日历控件初始化
		if($('.date').length != 0){
			$('.date').datepicker();
		}
		//加载表单验证
		/* if($("form").length !=0){
			$("form").validate();
		} */
	});
</script>
<sitemesh:head />
</head>

<body class="fixed-top">
	<%@ include file="/WEB-INF/content/common/layouts/header.jsp"%>
	<div class="page-container row-fluid">
		<%@ include file="/WEB-INF/content/common/layouts/left.jsp"%>
		<sitemesh:body />
	</div>
	<%@ include file="/WEB-INF/content/common/layouts/footer.jsp"%>
</body>
</html>