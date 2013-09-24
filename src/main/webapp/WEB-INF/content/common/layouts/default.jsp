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

<link href="${ctx}/assets/bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/assets/bootstrap/css/bootstrap-responsive.min.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/assets/font-awesome/css/font-awesome.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/assets/css/style.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/assets/css/style_responsive.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/assets/css/style_default.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/assets/gritter/css/jquery.gritter.css" type="text/css" rel="stylesheet" />
<link rel="shortcut icon" href="${ctx}/assets/dview.ico" />
<sitemesh:head />

</head>

<body class="fixed-top">
	<%@ include file="/WEB-INF/content/common/layouts/header.jsp"%>
	<div class="page-container row-fluid">
		<%@ include file="/WEB-INF/content/common/layouts/left.jsp"%>
		<sitemesh:body />
	</div>
	<%@ include file="/WEB-INF/content/common/layouts/footer.jsp"%>
	<script src="${ctx}/assets/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script src="${ctx}/assets/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<!--[if lt IE 9]>
	<script src="${ctx}/assets/js/excanvas.js"></script>
	<script src="${ctx}/assets/js/respond.js"></script>	
	<![endif]-->
	<script src="${ctx}/assets/js/jquery.cookie.js"></script>
   	<script src="${ctx}/assets/breakpoints/breakpoints.js" type="text/javascript" ></script>
	<script src="${ctx}/assets/js/app.js"></script>
	<script>
      jQuery(document).ready(function() {       
         App.init();
      });
   </script>
</body>
</html>