<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<%=contextPath%>/css/bootstrap.css" rel="stylesheet">
<link href="<%=contextPath%>/css/bootstrap-responsive.css"
	rel="stylesheet">
<link href="<%=contextPath%>/css/datepicker.css" rel="stylesheet">
<link href="<%=contextPath%>/css/font-awesome.min.css" rel="stylesheet">
<link href="<%=contextPath%>/js/google-code-prettify/prettify.css"
	rel="stylesheet">
<link href="<%=contextPath%>/css/flexslider.css" rel="stylesheet"
	type="text/css" media="screen" />
<link href="<%=contextPath%>/css/jquery.fancybox.css" rel="stylesheet"
	type="text/css" media="screen" />

<script src="<%=contextPath%>/js/jquery.js"></script>
<script src="<%=contextPath%>/js/google-code-prettify/prettify.js"></script>
<script src="<%=contextPath%>/js/bootstrap-2.3.min.js"></script>
</head>
<body>

	<div class="account-container">


		<div class="account-details">

			<span class="account-name">罗宾逊</span> <span class="account-role">管理员</span>

			<span class="account-actions"> <a href="javascript:;">资料</a> |
				<a href="javascript:;">编辑设置</a>
			</span>

		</div>
		<!-- /account-details -->

	</div>
	<!-- /account-container -->

	<hr>

	<ul id="main-nav" class="nav nav-tabs nav-stacked">

		<li><a href="./"> <i class="icon-home"></i> 首页
		</a></li>

		<li><a href="./faq.html"> <i class="icon-pushpin"></i> 帮助页面
		</a></li>

		<li><a href="./plans.html"> <i class="icon-th-list"></i> 价目表单
		</a></li>

		<li class="active"><a href="./grid.html"> <i
				class="icon-th-large"></i> 网格布局 <span
				class="label label-warning pull-right">5</span>
		</a></li>

		<li><a href="./charts.html"> <i class="icon-signal"></i> 图表统计
		</a></li>

		<li><a href="./account.html"> <i class="icon-user"></i> 用户账号
		</a></li>

		<li><a href="./login.html"> <i class="icon-lock"></i> 登录页面
		</a></li>

	</ul>



	<hr>

	<div class="sidebar-extra">
		<p>这里是提示信息文字这里是提示信息文字这里是提示信息文字这里是提示信息文字这里是提示信息文字这里是提示信息文字这里是提示信息文字这里是提示信息文字.</p>
	</div>
	<!-- .sidebar-extra -->

	<br>


</body>
</html>