<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script type="text/javascript">

$(function() {
	var liid = window.location.href.split("?uiid=")[1];
    $('#signout').tooltip({placement : 'bottom', title : '退出'}) ; 
    $('#navigatorUl li').each(function(index, obj) {
		$(this).removeClass();
	});
	$("#" + liid).addClass('active');
});
</script>
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
						<li id="zoneUI"><a href="<c:url value="/main.action?uiid=zoneUI" />"><i class="icon-share"></i> 动态</a></li>
						<li id="recordUI"><a href="<c:url value='/record_forwardAdd.action?uiid=recordUI' />"><i class="icon-edit"></i> 记账</a></li>
						<li id="sumUI"><a href="<c:url value="/outgo_list.action?uiid=sumUI" />"><i class="icon-bar-chart"></i> 统计</a></li>
						<li id="demoUI"><a href="<c:url value="/demo.action?uiid=demoUI" />"><i class="icon-bar-chart"></i> 例子</a></li>
					</ul>
					<ul class="nav pull-right">
			        	<li><a id="signout" href='<c:url value="/j_spring_security_logout"/>'><i class="icon-signout icon-white"></i>&nbsp;</a></li>
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