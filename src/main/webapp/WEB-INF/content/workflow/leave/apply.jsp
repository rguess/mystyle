<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/content/common/common.jsp"%>
<html>
<head>
<title>发起请假流程</title>
<%@ include file="/WEB-INF/content/common/datepicker.jsp"%>
<%@ include file="/WEB-INF/content/common/jquery-validation.jsp"%>
<script type="text/javascript">
	$(function(){
		App.activeMenu("workflow/process");
		registerDateOnChange();
	});
	
	//日期点击事件
	function registerDateOnChange(){
		$('.date').datepicker().on('changeDate', function(ev){
			var start = $("#startTime").val();
			var end = $("#endTime").val();
		 });
	}
</script>
</head>
<body>
	<div class="page-content">
		<div class="container-fluid">
			<!-- 页面导航 -->
			<tool:navBar pageTitle="请假"
				pageTitleContent="工作流程-请假" titleIcon="icon-home" />
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
							<form action="${ctx }/workflow/leave/start" class="form-horizontal" method="post" id="form1">
								<div class="control-group">
                                     <label class="control-label">请假类型：</label>
                                     <div class="controls">
                                        <label class="radio">
                                        <input type="radio" name="leaveType" value="调休" />
                                        	调休
                                        </label>
                                        <label class="radio">
                                        <input type="radio" name="leaveType" value="事假" checked />
                                        	事假
                                        </label>  
                                        <label class="radio">
                                        <input type="radio" name="leaveType" value="事假" />
                                        	霸王假
                                        </label>
                                     </div>
                                  </div>
                                    
								<div class="control-group">
									<label class="control-label">开始如期：</label>
                                    <div class="controls">
                                      <div class="input-append date" data-date-format="yyyy-mm-dd">
										<input class="span12 m-wrap"
											 id="startTime" 
											 name="startTime" 
											 type="text" 
											 validate="{required:true}"
											 readonly="readonly">
										<span class="add-on">
											<i class="icon-th"></i>
										</span>
									</div>
                                   </div>
                                 </div>
                                 
                                <div class="control-group">
									<label class="control-label">结束日期：</label>
                                   	<div class="controls">
	                                    <div class="input-append date" data-date-format="yyyy-mm-dd">
											<input class="span12 m-wrap" 
													id="endTime" 
													name="endTime" 
													type="text"
													validate="{required:true}"
													readonly="readonly">
											<span class="add-on">
												<i class="icon-th"></i>
											</span>
										</div>
                                	</div>
                                </div>
                                
                                <div class="control-group">
									<label class="control-label">请假天数：</label>
                                   	<div class="controls">
                                       <input type="text" id="name" class="m-wrap span6">
                                    </div>
                                </div>
								
								<div class="control-group">
									<label class="control-label">原因:</label>
									<div class="controls">
										<textarea rows="3" cols="6" class="span6 m-wrap" name="reason"></textarea>
									</div>
								</div>
								<div class="form-actions">
									<button type="submit" class="btn blue">提交</button>
									<a class='btn' href="${header.Referer }">返回</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>