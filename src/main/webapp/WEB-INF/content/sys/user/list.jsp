<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/content/common/common.jsp"%>
<html>
<head>
<title>用户列表</title>
<link href="${ctx}/assets/comp/datepicker/datepicker.css" type="text/css" rel="stylesheet" />
<script src="${ctx}/assets/comp/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>
<link href="${ctx}/assets/comp/bootstrap-paginator/DT_bootstrap.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="${ctx}/assets/comp/bootstrap-paginator/bootstrap-paginator.js"></script>
<script type="text/javascript" src="${ctx}/assets/js/page.js"></script>

<!-- 通过这种方式生成权限数组 ,点击去看详细-->
<tool:perms permStr="sys:user:update-sys:user:delete-sys:user:show"></tool:perms>

<script type="text/javascript">
$(document).ready(function() {
	//高亮左侧菜单
	App.activeMenu("sys/user/list");
	Page.initData(
		{
			url:"${ctx}/sys/user/page",
			tableId : "#sample_1",
			pageSize : 10
		},
		null,
		[{cName:"name",cValue:"姓名"},
		 {cName:"email",cValue:"邮箱"},
		 {cName:"loginId",cValue:"登录名"},
		 {cName:"mobilePhone",cValue:"手机",noSort:true},
		 {cName:"address",cValue:"地址"},
		 {cName:"createDate",cValue:"创建时间",format:function(i,value,item){
			 if(App.isNundef(value)){
				 return new Date(value).format("yyyy-MM-dd")
			 }
			 return value;
		 }}
		 ]
	);
});
function doQuery(){
	var queryObj = {
		search_LIKES_email : null,
		search_LIKES_address : null,
		search_LIKES_name : null,
		search_EQD_createDate : null
	};
	var email = $("#email").val();
	var addr = $("#addr").val();
	var name = $("#name").val();
	var time = $("#time").val();
	App.isNundef(email)?queryObj.search_LIKES_email = email:null;
	App.isNundef(addr)?queryObj.search_LIKES_address = addr:null;
	App.isNundef(name)?queryObj.search_LIKES_name = name:null;
	App.isNundef(time)?queryObj.search_EQD_createDate = time:null;
	Page.doQuery(queryObj);
}
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
								<i class="diy_icon_04_38"></i>列表
							</h4>
							<div class="tools">
								<a href="javascript:;" class="collapse"></a><a
									href="javascript:;" class="remove"></a>
							</div>
						</div>
						<div class="portlet-body">
								<div class="clearfix">
									<p>
										<shiro:hasPermission name="sys:user:add">
											<a class="btn green" href="${ctx}/sys/user/create">
												添加 <i class="icon-plus"></i>
											</a>
										</shiro:hasPermission>
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
							<form>
								<div class="row-fluid">
									<div class="span2 ">
	                                    <div class="control-group">
	                                       <div class="controls">
	                                          <input type="text" id="email" class="m-wrap span12" placeholder="邮箱">
	                                       </div>
	                                    </div>
                                 	</div>
                                 	
                                 	<div class="span2 ">
	                                    <div class="control-group">
	                                       <div class="controls">
	                                          <input type="text" id="addr" class="m-wrap span12" placeholder="地址">
	                                       </div>
	                                    </div>
                                 	</div>
                                 	
                                 	<div class="span2 ">
	                                    <div class="control-group">
	                                       <div class="controls">
	                                          <input type="text" id="name" class="m-wrap span12" placeholder="姓名">
	                                       </div>
	                                    </div>
                                 	</div>
                                 	
                                 	<div class="span3 ">
	                                    <div class="control-group">
	                                       <div class="controls">
	                                         <div class="input-append date" data-date-format="yyyy-mm-dd">
												<input class="span6 m-wrap" id="time" type="text"
													readonly="readonly" placeholder="时间"> <span class="add-on"><i
													class="icon-th"></i></span>
											</div>
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