/*******************************************************************************
 * 分页封装函数 基于jquery pagination
 */
(function($) {
	$.fn.page = function(options, url) {
		var defaultVal = {
			pageSize : 10
		};
		var obj = $.extend(defaultVal, options);
		
		$.ajax({
			url : url,
            type : 'POST',
            data : queryData
		});
		$(this).pagination(url, {
			callback : pageselectCallback,
			prev_text : '上一页',
			next_text : '下一页 ',
			items_per_page : obj.pageSize,
			num_display_entries : 6,
			current_page : pageIndex,
			num_edge_entries : 2
		});
	};
})(jQuery);