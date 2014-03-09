Date.prototype.format = function(format) {
	var o = {
		"M+" : this.getMonth() + 1, // month
		"d+" : this.getDate(), // day
		"h+" : this.getHours(), // hour
		"m+" : this.getMinutes(), // minute
		"s+" : this.getSeconds(), // second
		"q+" : Math.floor((this.getMonth() + 3) / 3), // quarter
		"S" : this.getMilliseconds()
	// millisecond
	};

	if (/(y+)/.test(format)) {
		format = format.replace(RegExp.$1, (this.getFullYear() + "")
				.substr(4 - RegExp.$1.length));
	}

	for ( var k in o) {
		if (new RegExp("(" + k + ")").test(format)) {
			format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k]
					: ("00" + o[k]).substr(("" + o[k]).length));
		}
	}
	return format;
};

//居中
(function ($) {
  $.fn.center = function (settings) {
    var style = $.extend({
      position: 'absolute', //absolute or fixed
      top     : '50%', //50%即居中，将应用负边距计算，溢出不予考虑了。
      left    : '50%',
      zIndex  : 2009,
      relative: true //相对于包含它的容器居中还是整个页面
    }, settings || {});

    return this.each(function () {
      var $this = $(this);

      if (style.top == '50%') style.marginTop = -$this.outerHeight() / 2;
      if (style.left == '50%') style.marginLeft = -$this.outerWidth() / 2;
      if (style.relative && !$this.parent().is('body') && $this.parent().css('position') == 'static') $this.parent().css('position', 'relative');
      delete style.relative;
      //ie6
      if (style.position == 'fixed' && $.browser.version == '6.0') {
        style.marginTop += $(window).scrollTop();
        style.position = 'absolute';
        $(window).scroll(function () {
          $this.stop().animate({
            marginTop: $(window).scrollTop() - $this.outerHeight() / 2
          });
        });
      }
      $this.css(style);
    });
  };
})(jQuery);

//移动
(function ($) {
	$.fn.move = function (){
		
		var $win = $(this);
		var $title = $win.find(".portlet-title");
		//e鼠标事件 
		$title.mousedown(function(e){
			var $this = $(this);
	        var offset = $win.offset();//DIV在页面的位置  
	        var x = e.pageX - offset.left;//获得鼠标指针离DIV元素左边界的距离  
	        var y = e.pageY - offset.top;//获得鼠标指针离DIV元素上边界的距离 
//	        alert(e.pageX + "-------"+e.pageY);
	        $(document).bind("mousemove",function(ev)//绑定鼠标的移动事件，因为光标在DIV元素外面也要有效果，所以要用doucment的事件，而不用DIV元素的事件  
	        {  
	        	$win.stop();//加上这个之后
	            var _x = ev.pageX - x;//获得X轴方向移动的值  
	            var _y = ev.pageY - y;//获得Y轴方向移动的值  
//	            alert(ev.pageX + "-------"+ev.pageY);
	            $win.animate({left:_x+"px",top:_y+"px"},10);  
	        });
	        
	        $(document).mouseup(function()  
            {  
	        	$(this).unbind("mousemove");
            }) 
	    });
	}
})(jQuery);

// 遮罩层函数
function blockUI() {
	$(".page-content").block({
		message : '<img src="' + ctx + '/assets/img/loading.gif">',
		css : {
			border: 'none',
            padding: '2px',
            backgroundColor: 'none'
		},
		overlayCSS : {
			backgroundColor: '#000',
            opacity: 0.05,
            cursor: 'wait'
		}
	});
}

// 取消遮罩层
function unBlockUI(){
	$(".page-content").unblock();
}
