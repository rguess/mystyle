var Html = {
	// 操作按钮
	operBtn : function() {
		$("<div></div>").addClass("btn-group").addClass("mini").append(
				$("<a><a/>").addClass("btn").addClass("green").addClass("mini")
						.attr("href", "#").attr("data-toggle", "dropdown")
						.append($("<i></i>").addClass("icon-user"))
						.append("操作").append(
								$("<i></i>").addClass("icon-angle-down")))
				.append(
						$("<ul></ul>").addClass("dropdown-menu").append(
								$("<li></li>").append(
										$("<a><a/>").attr("href", "#").append(
												$("<i></i>").addClass(
														"icon-pencil")))
										.append("修改")).append(
								$("<li></li>").append(
										$("<a><a/>").attr("href", "#").append(
												$("<i></i>").addClass(
														"icon-trash"))).append(
										"删除")).append(
								$("<li></li>").append(
										$("<a><a/>").attr("href", "#").append(
												$("<i></i>").addClass(
														"icon-search")))
										.append("查看")));
	}
};