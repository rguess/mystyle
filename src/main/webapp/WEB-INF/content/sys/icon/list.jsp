<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/content/common/common.jsp"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" scope="page" />
<html>
<head>
<title>角色列表</title>
<link href="${ctx}/assets/comp/datepicker/datepicker.css" type="text/css" rel="stylesheet" />
<script src="${ctx}/assets/comp/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>
<link href="${ctx}/assets/comp/bootstrap-paginator/DT_bootstrap.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="${ctx}/assets/comp/bootstrap-paginator/bootstrap-paginator.js"></script>
<script type="text/javascript" src="${ctx}/assets/js/page.js"></script>

<!-- 通过这种方式生成权限数组 ,点击去看详细-->
<tool:perms permStr="sys:icon:update-sys:icon:delete-sys:icon:show"></tool:perms>

<script type="text/javascript">
$(document).ready(function() {
	
	App.activeMenu("sys/icon/list");
	
	Page.initData(
		{
			url:"${ctx}/sys/icon/page",
			pageNo : 1,
			pageSize : 10,
			tableId : "#sample_1"
		},
		null,
		[{cName:"mark",cValue:"标识符 "},
		 {cName:"mark",cValue:"生成的图标",noSort:true,format:function(i,value,item){
			 return "<i class='"+value+"'></i>";
		 }},
		 {cName:"type",cValue:"类型"},
		 {cName:"description",cValue:"描述"}
		 ]
	);
});

function doQuery(){
	var queryObj = {
			search_LIKES_mark : null
		};
	var mark = $("#mark").val();
	App.isNundef(mark)?queryObj.search_LIKES_mark = mark:null;
	Page.doQuery(queryObj);
}
</script>
</head>
<body>
	<div class="page-content">
		<div class="container-fluid">
			<!-- 页面导航 -->
			<tool:navBar pageTitle="图标列表" pageTitleContent="系统管理-图标管理-图标列表" titleIcon="icon-home"/>
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
									<a class="btn green" href="${ctx}/sys/icon/create">
										添加 <i class="icon-plus"></i>
									</a>
								</div>
							</div>
							<form>
								<div class="row-fluid">
                                 	<div class="span2 ">
	                                    <div class="control-group">
	                                       <div class="controls">
	                                          <input type="text" id="mark" class="m-wrap span12" placeholder="标识">
	                                       </div>
	                                    </div>
                                 	</div>
                                 	<div class="span3 ">
	                                    <div class="control-group">
	                                       <div class="controls">
	                                         <a class="btn blue" href="javascript:void(0)" onclick="javascript:doQuery();">
	                                         	<i class="icon-search"></i>
	                                         	查询</a>
	                                         <button type="reset" class="btn">
	                                         	<i class="icon-trash"></i>清空
	                                         </button>
	                                       </div>
	                                    </div>
                                 	</div>
								</div>
							</form>
							<table class="table table-striped table-bordered table-hover" id="sample_1">
								
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>