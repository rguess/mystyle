var Page = {
	/**
	 * 默认设置
	 */
	defaultVal : {
		pageNo : 1,
		pageSize : 10,
		totalPages : 0,
		url : "",
		tableId : ""
	},
	/**
	 * 默认列
	 */
	defaultCols :[],
	/**
	 * 查询条件
	 */
	cqData : {},
	/**
	 * 保存当前状态下数据
	 */
	curData : {},
	/**
	 * ajax访问数据服务器获得数据
	 */
	accToSer : function(callBack){
		$.blockUI();
		$.ajax({
			type : "POST",
			dataType : "json",
			url : Page.defaultVal.url,
			async : false,
			data : Page.cqData,
			success : callBack,
			error : function(error){
				
			}
		});
	},
	/**
	 * 主体处理函数
	 * @param options
	 * @param queryData
	 * @param cols
	 */
	initData : function(options,queryData,cols) {
		this.defaultCols = cols;
		//组合默认与传进来的参数
		var obj = $.extend(this.defaultVal, options || {});
		this.defaultVal = obj;
		//当前页和每页显示多少条放进查询参数中
		if(!queryData) queryData = {};
		queryData.pageNo = obj.pageNo;
		queryData.pageSize = obj.pageSize;
		Page.cqData = queryData;
		//初始化数据回调
		var callBack = function(page){
			Page.defaultVal.totalPages = page.totalPages;
			thead = $("<thead></thead>");
			var theadTr = $("<tr></tr>");
			$.each(cols,function(i,item){
				theadTr.append($("<th class='sorting' onclick='Page.sorting(this)'></th>").attr("cName",item.cName).html(item.cValue));
			});
			theadTr.append($("<th class='span2'></th>").html("操作"));
			thead.append(theadTr);
			tBody = $("<tbody></tbody>");
			$.each(page.data,function(i,item){
				var tr = $("<tr></tr>");
				$.each(cols,function(j,col){
					//判断是否是时间类型,如为时间类型，需转型
					if(col.date && App.isNundef(item[col.cName])){
						tr.append($("<td></td>").html(new Date(item[col.cName]).format("yyyy-MM-dd")));
					}else{
						tr.append($("<td></td>").html(item[col.cName]));
					}
					
				});
				tr.append($("<td></td>").html(Page.operBtn(item.id)));
				tBody.append(tr);
			});
			$(obj.tableId).empty().append(thead).append(tBody);
			Page.initPagination(page);
		};
		Page.accToSer(callBack);
	},
	//执行分页
	initPagination : function(page){
		var span = $("<div></div>");
		var pagnation = $("<div id='Pagination'></div>");
		var pageInfo = $("<div class='pull-left' id='pageInfo'></div>").html($("<span></span>").html('当前第'+Page.cqData.pageNo+'/'+page.totalPages+'页，共'+page.totalSize+'条记录'));
		span.append(pageInfo).append(pagnation);
		$(this.defaultVal.tableId).after(span);
		var options = {
//			size:"large",
			alignment:"right",
	        currentPage: Page.cqData.pageNo,
	        totalPages: this.defaultVal.totalPages,
	        pageUrl: function(type, page, current){
                return "javascript:void(0)";
            },
            tooltipTitles: function (type, page, current) {
                switch (type) {
                case "first":
                    return "第一页";
                case "prev":
                    return "上一页";
                case "next":
                    return "下一页";
                case "last":
                    return "最后一页";
                case "page":
                	return "第"+page+"页";
                }
            },
            onPageClicked: function(e,originalEvent,type,page){
            	Page.cqData.pageNo = page;
            	Page.accToSer(Page.pageChangedCallBack);
            }
		};
		pagnation.bootstrapPaginator(options);
	},
	/**
	 * 翻页和排序回调函数
	 * @param id
	 * @returns
	 */
	pageChangedCallBack : function(pageData){
		var tbody = $(Page.defaultVal.tableId+" tbody:first").empty();
		$.each(pageData.data,function(i,item){
			var tr = $("<tr></tr>");
			$.each(Page.defaultCols,function(j,col){
				//判断是否是时间类型,如为时间类型，需转型
				if(col.date && App.isNundef(item[col.cName])){
					tr.append($("<td></td>").html(new Date(item[col.cName]).format("yyyy-MM-dd")));
				}else{
					tr.append($("<td></td>").html(item[col.cName]));
				}
			});
			tr.append($("<td></td>").html(Page.operBtn(item.id)));
			tbody.append(tr);
		});
		options = {
            totalPages: pageData.totalPages
        };
		$('#Pagination').bootstrapPaginator(options);
		$("#pageInfo").html($("<span></span>").html('当前第'+Page.cqData.pageNo+'/'+pageData.totalPages+'页，共'+pageData.totalSize+'条记录'));
	},
	//生成操作按钮
	operBtn : function(id){
		var div = $('<div class="btn-group mini"></div>');
		var a = $('<a class="btn green mini" href="#" data-toggle="dropdown"></a>')
		.append('<i class="icon-user"></i> ')
		.append('操作')
		.append('<i class="icon-angle-down"></i>');
		var ul = $('<ul class="dropdown-menu"></ul>');
		ul.append('<li><a href="javascript:void(0)" onclick="javascript:Page.updateObj('+id+');"><i class="icon-pencil"></i>修改</a></li>');
		ul.append('<li><a href="javascript:void(0)" onclick="javascript:Page.deleteObj('+id+');"><i class="icon-trash"></i>删除</a></li>');
		ul.append('<li><a href="javascript:void(0)" onclick="javascript:Page.viewObj('+id+');"><i class="icon-search"></i>查看</a></li>');
		return div.append(a).append(ul);
	},
	updateObj : function(id){
		window.location.href = Page.subUrl()+"/update/"+id;
	},
	deleteObj : function(id){
		window.location.href = Page.subUrl()+"/delete/"+id;
	},
	viewObj : function(id){
		window.location.href = Page.subUrl()+"/show/"+id;
	},
	/**
	 * 截取url供修改，删除，查看等使用
	 */
	subUrl : function(){
		var url = Page.defaultVal.url;
		return url.substring(0,url.lastIndexOf("/"));
	},
	/**
	 * 执行排序函数
	 */
	sorting : function(obj){
		var sort = {};
		if($(obj).hasClass("sorting")||$(obj).hasClass("sorting_desc")){
			$(obj).removeClass("sorting").removeClass("sorting_desc").addClass("sorting_asc")
				.siblings("[class!=span2]").removeClass("sorting_asc").removeClass("sorting_desc").addClass("sorting");
			sort = {orderBy:$(obj).attr("cName"),orderDir:"asc"};
		}else if($(obj).hasClass("sorting_asc")){
			$(obj).removeClass("sorting").removeClass("sorting_asc").addClass("sorting_desc")
				.siblings("[class!=span2]").removeClass("sorting_asc").removeClass("sorting_desc").addClass("sorting");
			sort = {orderBy:$(obj).attr("cName"),orderDir:"desc"};
		}
		Page.cqData = $.extend(Page.cqData,sort);
		Page.cqData.pageNo = 1;
		Page.accToSer(Page.pageChangedCallBack);
		$('#Pagination').bootstrapPaginator("showFirst");
	},
	/**
	 * 执行查询函数
	 */
	doQuery : function(queryObj){
		Page.cqData = $.extend(Page.cqData,queryObj);
		Page.cqData.pageNo = 1;
		Page.accToSer(Page.pageChangedCallBack);
		$('#Pagination').bootstrapPaginator("showFirst");
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