<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="${basePath}">
    
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<%@ include file="common/head.jspf" %>
	 <link rel="stylesheet" href="${basePath}css/style.css" type="text/css"></link>
	 <link rel="stylesheet" href="${basePath}css/font-awesome.css" type="text/css"></link>
	 <link rel="stylesheet" href="${basePath}css/style-metro.css" type="text/css"></link>
	  <link rel="stylesheet" href="${basePath}css/default.css" type="text/css"></link>
	  <link rel="stylesheet" href="${basePath}css/style-responsive.css" type="text/css"></link>
	  <link href="${basePath}image/favicon.ico"  rel="shortcut icon" type="image/x-icon"></link>
	  <script type="text/javascript" src="${basePath}js/app.js"></script>
	  <script type="text/javascript" src="${basePath}js/artDialog/jquery.artDialog.js?skin=green"></script>
	  
	  
	  <script type="text/javascript">
        jQuery(document).ready(function () {
            var aLi = $("[name='diyli']");
            var i = 0;
            for (i = 0; i < aLi.length; i++) {
                aLi[i].onmousedown = function () {
                    for (i = 0; i < aLi.length; i++) {
                        aLi[i].className = "";
                    }
                    this.className = "active";
                };
            }

            App.init();
            menuClick(2);

        });
        function menuClick(index) {
            if (index == 1) {
                $("#titleA").html("雪花的快乐");
                $("#titleB").html("酒店管理");
                var url = '${basePath}user/user.jsp';
                $("#mainFrame").attr("src", url);
            }
            else if (index == 2) {
                $("#titleA").html("用户");
                $("#titleB").html("用户管理");
                var url = '${basePath}user/user.jsp';
                $("#mainFrame").attr("src", url);
            }
        }
    </script>
  </head>
	 
<body class="page-header-fixed">
    <!-- BEGIN HEADER -->

	<div class="header navbar navbar-inverse navbar-fixed-top">

		<!-- BEGIN TOP NAVIGATION BAR -->

		<div class="navbar-inner">

			<div class="container-fluid">

				<!-- BEGIN LOGO -->

				<a class="brand" href="index.html">

				<img src="${basePath}image/logo.png" alt="logo"/>

				</a>

				<!-- END LOGO -->

				<!-- BEGIN RESPONSIVE MENU TOGGLER -->

				<!--  a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">

				<img src="${basePath}image/menu-toggler.png" alt="" />

				</a-->         

				<!-- END RESPONSIVE MENU TOGGLER -->            

				<!-- BEGIN TOP NAVIGATION MENU -->              

				<ul class="nav pull-right">

					<!-- END TODO DROPDOWN -->

					<!-- BEGIN USER LOGIN DROPDOWN -->

					<li class="dropdown user">

						<a href="#" class="dropdown-toggle" data-toggle="dropdown">

						<img alt="" src="${basePath}image/avatar2.jpg" />

						<span class="username">Roby</span>

						<i class="icon-angle-down"></i>

						</a>

						<ul class="dropdown-menu">

							<li><a href="extra_profile.html"><i class="icon-user"></i> 真生命</a></li>

							<li><a href="page_calendar.html"><i class="icon-calendar"></i> 我的真幸福</a></li>

							<li><a href="inbox.html"><i class="icon-envelope"></i> 雪花的快乐</a></li>

							<li><a href="#"><i class="icon-tasks"></i> 我的任务</a></li>

							<li class="divider"></li>

							<li><a href="extra_lock.html"><i class="icon-lock"></i> 奋斗自求</a></li>

							<li><a href="login.html"><i class="icon-key"></i> 退出</a></li>

						</ul>

					</li>

					<!-- END USER LOGIN DROPDOWN -->

				</ul>

				<!-- END TOP NAVIGATION MENU --> 

			</div>

		</div>

		<!-- END TOP NAVIGATION BAR -->

	</div>

	<!-- END HEADER -->

	<!-- BEGIN CONTAINER -->

	<div class="page-container">

		<!-- BEGIN SIDEBAR -->

		<div class="page-sidebar nav-collapse ">

			<!-- BEGIN SIDEBAR MENU -->        
			<ul class="page-sidebar-menu">
				<li>
					<div class="sidebar-toggler hidden-phone"></div>
				</li>
				<li>
					<p></p>
				</li>

				<li name="diylimm" class="start active " >

					<a href="index.jsp">
					    <i class="icon-home"></i> 
					    <span class="title">首页</span>
					    <span class="selected"></span>
					</a>

				</li>

			    <li name="diylimm">
			        <a href="javascript:;">
			            <i class="icon-cogs"></i> <span class="title">用户</span><span class="arrow"></span>
			        </a>
			        <ul class="sub-menu">
			            <li name="diyli"><a href="#" onclick="menuClick(1)">酒店管理</a></li>
			            <li name="diyli"><a href="#" onclick="menuClick(2)">用户管理</a></li>
			        </ul>
			    </li>
                <li name="diylimm">
					<a href="javascript:;">
					    <i class="icon-cogs"></i> <span class="title">系统管理</span><span class="arrow"></span>
					</a>
					<ul class="sub-menu">
						<li name="diyli"><a href="#" onclick="menuClick(3)">权限管理</a></li>
						<li name="diyli"><a href="#" onclick="menuClick(4)">菜单管理</a></li>
					</ul>
				</li>
				<li class="last " name="diylimm">
					<a href="#"><i class="icon-bar-chart"></i><span class="title">神兽</span></a>
				</li>

			</ul>

			<!-- END SIDEBAR MENU -->

		</div>

		<!-- END SIDEBAR -->

		<!-- BEGIN PAGE -->

		<div class="page-content">
			<!-- BEGIN PAGE CONTAINER-->
			<div class="container-fluid">

				<!-- BEGIN PAGE HEADER-->

				<div class="row-fluid">

					<div class="span12">

						<!-- BEGIN PAGE TITLE & BREADCRUMB-->

						<h3 class="page-title">
							雪花的快乐 
                            <small>吾谁与归</small>
						</h3>

						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a href="#" id="titleA">首页</a> 
								<i class="icon-angle-right"></i>
							</li>
							<li><a href="#" id="titleB">雪花的快乐</a></li>
						</ul>

						<!-- END PAGE TITLE & BREADCRUMB-->

					</div>

				</div>

				<!-- END PAGE HEADER-->

                <iframe id='mainFrame' name="mainFrame" frameborder="no" border="0" marginwidth="0"
                    marginheight="0" scrolling="no" allowtransparency="yes" style="width: 100%; height:780px">
                </iframe>
			<!-- END PAGE CONTAINER-->    

		</div>

		<!-- END PAGE -->

	</div>
    </div>
	<!-- END CONTAINER -->

	<!-- BEGIN FOOTER -->

	<div class="footer">

		<div class="footer-inner">

			2017 &copy; 大连甲骨文实训中心版权所有.

		</div>

		<div class="footer-tools">

			<span class="go-top">

			<i class="icon-angle-up"></i>
			</span>
		</div>
	</div>

    
</body>
</html>

