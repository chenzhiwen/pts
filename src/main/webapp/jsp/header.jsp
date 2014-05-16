<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common/common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=contextPath%>/css/bootstrap.css" rel="stylesheet">
<link href="<%=contextPath%>/css/bootstrap-responsive.css" rel="stylesheet">
<link href="<%=contextPath%>/css/font-awesome.min.css" rel="stylesheet">
<link href="<%=contextPath%>/js/google-code-prettify/prettify.css" rel="stylesheet">

<script src="<%=contextPath%>/js/jquery.js"></script>
<script src="<%=contextPath%>/js/google-code-prettify/prettify.js"></script>
<script src="<%=contextPath%>/js/bootstrap-2.3.min.js"></script>
<script src="<%=contextPath%>/js/application.js"></script>

<script type="text/javascript">
$(function() {
	
	$('#navigatorUl li').click(function(e) { 
		$('#navigatorUl li').each(function(index, obj) {
			$(this).removeClass();
		});
    	$(this).addClass('active');
   	});

})
</script>
<title>Insert title here</title>
</head>
<body>
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a> <a class="brand" href="#">记账</a>
				<div class="nav-collapse">
					<ul id="navigatorUl" class="nav">
						<li class="active"><a href="<%=contextPath%>/zone.action" target="mainFrame"><i class="icon-share"></i> 动态</a></li>
						<li><a href="<%=contextPath%>/jsp/record/addRecord.jsp" target="mainFrame"><i class="icon-edit"></i> 记账</a></li>
						<li><a href="<%=contextPath%>/outgo_list.action" target="mainFrame"><i class="icon-bar-chart"></i> 统计</a></li>
					</ul>
					<ul class="nav pull-right">
			        	<li><a href="<%=contextPath%>/j_spring_security_logout"><i class="icon-signout icon-white"></i> 退出</a></li>
			        </ul>
					<form class="navbar-search pull-right">
						<input type="text" class="search-query" placeholder="搜索">
					</form>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>
</body>
</html>