<%@ page contentType="text/html;charset=UTF-8"%>
<!-- BEGIN SIDEBAR -->
<div class="page-sidebar nav-collapse collapse">
	<!-- BEGIN SIDEBAR MENU -->
	<ul>
		<li>
			<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
			<div class="sidebar-toggler hidden-phone"></div> <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
		</li>
		<li class="start"><a href="index.html"> <i
				class="icon-home"></i> <span class="title">Dashboard</span> <span
				class="selected"></span>
		</a></li>
		
		<li class="has-sub">
			<a href="javascript:;">
				<i class="icon-bookmark-empty"></i>
				<span class="title">系统管理</span>
				<span class="arrow"></span>
			</a>
			<ul class="sub">
				<li><a href="${ctx }/sys/user/list">用户管理</a></li>
				<li><a href="${ctx }/sys/role/list">角色管理</a></li>
				<li><a href="${ctx }/sys/resource/list">资源管理</a></li>
			</ul>
		</li>
		
		<li class="has-sub"><a href="javascript:;"> <i
				class="icon-table"></i> <span class="title">Form Stuff</span> <span
				class="arrow"></span>
		</a>
			<ul class="sub">
				<li><a href="form_layout.html">Form Layouts</a></li>
				<li><a href="form_samples.html">Advance Form Samples</a></li>
				<li><a href="form_component.html">Form Components</a></li>
				<li><a href="form_wizard.html">Form Wizard</a></li>
				<li><a href="form_validation.html">Form Validation</a></li>
				<li><a href="form_fileupload.html">Multiple File Upload</a></li>
				<li><a href="form_dropzone.html">Dropzone File Upload</a></li>
			</ul></li>
		<li class="has-sub "><a href="javascript:;"> <i
				class="icon-th-list"></i> <span class="title">Data Tables</span> <span
				class="arrow "></span>
		</a>
			<ul class="sub">
				<li><a href="table_basic.html">Basic Tables</a></li>
				<li><a href="table_managed.html">Managed Tables</a></li>
				<li><a href="table_editable.html">Editable Tables</a></li>
			</ul></li>
		<li class="has-sub "><a href="javascript:;"> <i
				class="icon-th-list"></i> <span class="title">Portlets</span> <span
				class="arrow "></span>
		</a>
			<ul class="sub">
				<li><a href="portlet_general.html">General Portlets</a></li>
				<li><a href="portlet_draggable.html">Draggable Portlets</a></li>
			</ul></li>
		<li class="has-sub "><a href="javascript:;"> <i
				class="icon-map-marker"></i> <span class="title">Maps</span> <span
				class="arrow "></span>
		</a>
			<ul class="sub">
				<li><a href="maps_google.html">Google Maps</a></li>
				<li><a href="maps_vector.html">Vector Maps</a></li>
			</ul></li>
		<li class=""><a href="charts.html"> <i class="icon-bar-chart"></i>
				<span class="title">Visual Charts</span>
		</a></li>
		<li class=""><a href="calendar.html"> <i
				class="icon-calendar"></i> <span class="title">Calendar</span>
		</a></li>
		<li class=""><a href="gallery.html"> <i class="icon-camera"></i>
				<span class="title">Gallery</span>
		</a></li>
		<li class="has-sub "><a href="javascript:;"> <i
				class="icon-briefcase"></i> <span class="title">Extra</span> <span
				class="arrow "></span>
		</a>
			<ul class="sub">
				<li><a href="extra_profile.html">User Profile</a></li>
				<li><a href="extra_faq.html">FAQ</a></li>
				<li><a href="extra_search.html">Search Results</a></li>
				<li><a href="extra_invoice.html">Invoice</a></li>
				<li><a href="extra_pricing_table.html">Pricing Tables</a></li>
				<li><a href="extra_404.html">404 Page</a></li>
				<li><a href="extra_500.html">500 Page</a></li>
				<li><a href="extra_blank.html">Blank Page</a></li>
				<li><a href="extra_full_width.html">Full Width Page</a></li>
			</ul></li>
		<li class=""><a href="login.html"> <i class="icon-user"></i>
				<span class="title">Login Page</span>
		</a></li>
	</ul>
	<!-- END SIDEBAR MENU -->
</div>
<!-- END SIDEBAR -->