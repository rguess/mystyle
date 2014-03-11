<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/content/common/common.jsp"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" scope="page" />
<c:set var="pageTitle" value="${empty obj ? '添加角色':'修改角色' }" scope="page" />
<html>
<head>
<title>${pageTitle }</title>
<%@ include file="/WEB-INF/content/common/jquery-validation.jsp"%>
<link href="${ctx}/assets/comp/jquery-ztree/zTreeStyle.css" type="text/css" rel="stylesheet" />
<script src="${ctx}/assets/comp/jquery-ztree/jquery.ztree.all-3.5.min.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function(){
		App.activeMenu("sys/role/list");
		initTree();
	});
	
	function showRcs(){
		$("#rcs").show().center({position: 'fixed'}).move();
	}
	
	/* 初始化树 */
	function initTree(){
		var setting = {
			data :{
				key:{
					children:"childRes",
					name:"name"
				},
			}
		};
		$.ajax({
			type : "GET",
			dataType : "json",
			url : "${ctx}/sys/resource/showTree",
			success : function(data){
				$.fn.zTree.init($("#role_rec"), setting, operData(data));
			}
		});
	}
	
	function operData(data){
		$.each(data,function(i,item){
			alert(item.id);
			delete item.icon;
			if(item.childRes){
				operData(item);
			}
		})
	}
</script>
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
													   remote:{type:'POST',
													   		   url:'${ctx }/sys/role/isAvailable',
													   		   data:{oldValue:'${obj.name }'}},
													   messages:{remote:'该角色名称已存在'}}"
											name="name" value="${obj.name }" />
									</div>
								</div>
								<!-- 名称 -->
								<div class="control-group">
									<label class="control-label">名称:</label>
									<div class="controls">
										<input type="text" class="span6 m-wrap"
											validate="{required:true}"
											name="realName" value="${obj.realName }" />
									</div>
								</div>
								<!-- 名称 -->
								<div class="control-group">
									<label class="control-label">名称:</label>
									<div class="controls ztree" id="role_rec">
									
									</div>
								</div>
								<!-- 备注 -->
								<div class="control-group">
									<label class="control-label">备注:</label>
									<div class="controls">
										<textarea rows="3" cols="6" class="span6 m-wrap" name="remark">${obj.remark }</textarea>
									</div>
								</div>
								<div class="form-actions">
									<button type="submit" class="btn blue">提交</button>
									<a class='btn' href="${header.Referer }">返回</a>
									<a class='btn yellow' href="javascript:void(0);" onclick="javascript:showRcs();">test</a>
								</div>
							</form>
							<div >
							
							</div>
						</div>
					</div>
				</div>
				<%@ include file="/WEB-INF/content/sys/role/allotRc.jsp"%>
			</div>
		</div>
	</div>
</body>
</html>