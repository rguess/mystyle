<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/content/common/common.jsp"%>
<html>
<head>
<title>角色列表</title>
<link href="${ctx}/assets/comp/datepicker/datepicker.css" type="text/css" rel="stylesheet" />
<script src="${ctx}/assets/comp/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>
<link href="${ctx}/assets/comp/bootstrap-paginator/DT_bootstrap.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="${ctx}/assets/comp/bootstrap-paginator/bootstrap-paginator.js"></script>
<script type="text/javascript" src="${ctx}/assets/js/page.js"></script>

<!-- 通过这种方式生成权限数组 ,点击去看详细-->
<tool:perms permStr="sys:role:update-sys:role:delete-sys:role:show"></tool:perms>

<script type="text/javascript">
$(document).ready(function() {
	
	App.activeMenu("sys/role/list");
	
	Page.initData(
		{
			url:"${ctx}/sys/role/page",
			pageNo : 1,
			pageSize : 10,
			tableId : "#sample_1"
		},
		null,
		[{cName:"name",cValue:"名称"},
		 {cName:"realName",cValue:"中文名"},
		 {cName:"remark",cValue:"备注",noSort:true}
		 ]
	);
});

function doQuery(){
	
}
</script>
</head>
<body>
	<div class="page-content">
		<div class="container-fluid">
			<!-- 页面导航 -->
			<tool:navBar pageTitle="角色列表" pageTitleContent="系统管理-角色管理-角色列表" titleIcon="icon-home"/>
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
								<p>
									<a class="btn green" href="${ctx}/sys/role/create">
										添加 <i class="icon-plus"></i>
									</a>
									<a class="btn blue" href="javascript:void(0);" onclick="Page.updateObj();">
										修改<i class="icon-pencil"></i>
									</a>
									<a class="btn red" href="javascript:void(0);" onclick="Page.deleteObj();">
										删除<i class="icon-trash"></i>
									</a>
									<a class="btn blue" href="javascript:void(0);" onclick="Page.viewObj();">
										详细<i class="icon-search"></i>
									</a>
								</p>
							</div>
							<form>
								<div class="row-fluid">
                                 	
                                 	<div class="span2 ">
	                                    <div class="control-group">
	                                       <div class="controls">
	                                          <input type="text" id="name" class="m-wrap span12" placeholder="角色名">
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