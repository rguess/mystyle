var Page = {
	// 默认设置
	defaultVal : {
		pageNo : 0,
		pageSize : 10,
		url : null
	},
	// 主体处理函数
	initData : function(options, queryData) {
		var obj = $.extend(this.defaultVal, options || {});
		console.log(obj);
		if(!queryData) queryData = {};
		queryData.pageNo = obj.pageNo;
		queryData.pageSize = obj.pageSize;
		$.ajax({
			type : "POST",
			dataType : "json",
			url : obj.url,
			data : queryData,
			success : function(data) {
				
			}
		});
	}
};

/*******************************************************************************
 * 分页封装插件 基于jquery pagination
 */
/*
 * (function($) { $.fn.page = function(options, url) { var defaultVal = {
 * pageSize : 10 }; var obj = $.extend(defaultVal, options);
 * 
 * $.ajax({ url : url, type : 'POST', data : queryData });
 * $(this).pagination(url, { callback : pageselectCallback, prev_text : '上一页',
 * next_text : '下一页 ', items_per_page : obj.pageSize, num_display_entries : 6,
 * current_page : pageIndex, num_edge_entries : 2 }); }; })(jQuery);
 */