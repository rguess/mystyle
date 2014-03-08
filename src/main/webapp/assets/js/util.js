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
