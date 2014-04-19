<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
						<li class="active"><a href="#">首页</a></li>
						<li><a href="#">关于</a></li>
						<li><a href="#">联系</a></li>
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