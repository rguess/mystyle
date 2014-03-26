(function ($) {
	
	/**
	 * 展示流程图
	 */
	$.fn.initFlowChart = function(pid){
		var $this = $(this);
		var imageUrl = ctx + "/workflow/process/trace/auto/"+pid;
//	    var imageUrl = ctx + "/workflow/resource/process-instance?pid=" + pid + "&type=image";
	    $this.find(".portlet-body").html($("<img src='" + imageUrl + "'/>"));
	};
	
})(jQuery);

/**
 * 我的流程
 */
var MyProcess = {
		
	init : function(){
		MyProcess.initRunningData();
		$("#runingTab,#hisTab").click(function(){
			var $obj = $(this);
			var id = $obj.attr("id");
			Page.clear();
			if(id == "runingTab"){
				MyProcess.initRunningData();
			}else if(id == "hisTab"){
				MyProcess.initHisData();
			}
		});
	},
	
	/**
	 * 初始化运行中数据
	 */
	initRunningData : function(){
		Page.initData(
			{
				url:ctx+"/workflow/myprocess/page/running",
				pageNo : 1,
				pageSize : 10,
				tableId : "#sample_1"
			},
			null,
			[{cName:"definitionName",cValue:"流程名称 ",noSort:true},
			 {cName:"taskname",cValue:"当前节点 ",noSort:true,format:function(i,value,item){
				 return $("<a href='javascript:void(0)' class='tooltips' data-original-title='点击查看流程图' data-placement='right' onclick='javascript:show("+item.instanceId+")'>"+value+"</a>");
			 }},
			 {cName:"definitionKey",cValue:"key",noSort:true},
			 {cName:"instanceId",cValue:"实例ID",noSort:true},
			 {cName:"definitionVersion",cValue:"版本号",noSort:true}
			 ]
		);
	},
	
	/**
	 * 初始化已结束数据
	 */
	initHisData : function(){
		Page.initData(
			{
				url:ctx+"/workflow/myprocess/page/his",
				pageNo : 1,
				pageSize : 10,
				tableId : "#sample_1"
			},
			null,
			[{cName:"definitionName",cValue:"流程名称 ",noSort:true},
			 {cName:"definitionKey",cValue:"key",noSort:true},
			 {cName:"instanceId",cValue:"实例ID",noSort:true},
			 {cName:"definitionVersion",cValue:"版本号",noSort:true}
			 ]
		);
	}
};




















