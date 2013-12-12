<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<html>
<head>
<title>01</title>
</head>
<body>
	<div class="page-content">
		<a data-toggle="modal" href="02.jsp" data-target="#myModal">click
			me</a> <a href="#myModal" role="button" class="btn" data-toggle="modal">Launch
			demo modal</a>

		<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">×</button>
				<h3 id="myModalLabel">Modal header</h3>
			</div>
			<div class="modal-body">
				<p>${user.id }</p>
				<p>${user.name }</p>
				<p>${user.password }</p>
				<p><fmt:formatDate value="${user.createDate }"/></p>
			</div>
			<div class="modal-footer">
				<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
				<button class="btn btn-primary">Save changes</button>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		/* $(function(){
			$.ajax({
				url : '${ctx}/01/error',
				type : 'GET',
				success : function(data) {
					alert(data);
				},
				error : function(error){
					alert(error.status);
					alert(error.statusText);
				}
			});
		}); */
	</script>
</body>
</html>