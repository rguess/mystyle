<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<html>
<head>
<title>日历控件</title>
<link href="${ctx}/assets/comp/datepicker/datepicker.css" type="text/css" rel="stylesheet" />
<script src="${ctx}/assets/comp/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>
<script type="text/javascript">
	
</script>
</head>
<body>
	<div class="page-content">
		<div class="input-append date" data-date="2013-12-01" data-date-format="yyyy-mm-dd">
			<input class="span6" type="text" value="2013-12-01"
				readonly="readonly"> <span class="add-on"><i
				class="icon-th"></i></span>
		</div>
		
		<div class="input-append date" data-date="2013-12-01" data-date-format="yyyy-mm-dd">
			<input class="span6" type="text" value="2013-12-01" readonly="readonly">
			<span class="add-on"><i class="icon-th"></i></span>
		</div>
	</div>
</body>
</html>