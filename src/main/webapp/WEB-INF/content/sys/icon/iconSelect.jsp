<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/content/common/common.jsp"%>
<div id="icons" class="modal hide fade" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal"
			aria-hidden="true">&times;</button>
		<h3>图标选择</h3>
	</div>
	<div class="modal-body">
		<c:forEach items="${icons }" var="icon" varStatus="sta">
			<a href="javascript:;" title="${icon.description }" style=""
				onclick="javascript:selIcon('${icon.mark }');"><i
				class="${icon.mark } icon-white"></i>&nbsp&nbsp
			</a>
		</c:forEach>
	</div>

	<div class="modal-footer">
		<button type="button red" class="btn" data-dismiss="modal"
			aria-hidden="true">关闭</button>
	</div>
</div>
