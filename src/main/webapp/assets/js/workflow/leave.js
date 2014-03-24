var Leave = {
	init : function(params){
		blockUI();
		$.ajax({
			type : "GET",
			url : ctx+"/workflow/leave/showByTaskId",
			data :{taskId:params.taskId},
			success : function(data){
				$("#sponsor").html(data.userName);
				$("#leaveType").html(data.leave.leaveType);
				$("#startTime").html(new Date(data.leave.startTime).format("yyyy-MM-dd"));
				$("#endTime").html(new Date(data.leave.endTime).format("yyyy-MM-dd"));
				$("#leaveDays").html(data.leave.leaveDays);
				$("#leaveReason").html(data.leave.reason);
				$("#leaveId").val(data.leave.id);
				if(App.isNundef(params.otherCallback)){
					params.otherCallback(data);
				}
				unBlockUI()
			},
			error : function(error) {
				unBlockUI();
			}
		});
	}
}