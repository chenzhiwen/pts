<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String contextPath = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ contextPath + "/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=contextPath%>/css/bootstrap.css" rel="stylesheet">
<link href="<%=contextPath%>/css/bootstrap-responsive.css" rel="stylesheet">
<link href="<%=contextPath%>/css/login.css" rel="stylesheet">

<script src="<%=contextPath%>/js/jquery.js"></script>
<script src="<%=contextPath%>/js/bootstrap-2.3.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<script type="text/javascript">


	/* 拼接FORM参数  */
	function getFormParams(form) {
		var params = "";
		var formData = $(form).serializeArray();
		$.each(formData, function() {
			params = params + this.name + "=" + this.value + "&";
		});
		params = params.substr(0, params.length - 1);
		return params;
	}

	function login() {
		var params = getFormParams($("#loginForm"));
		$.ajax({
			url : "<%=contextPath%>/j_spring_security_check",
			type : 'post',
			data : params,
			success : function(data) {
				var result = eval("(" + data + ")");
				if (result.data.authentication) {
					window.location.href = '<%=contextPath%>/main.action';
				} else {
					if (result.data.verifycodeFailure) {
						$('#verifycode').val("");
						alert(result.data.msg);
					} else if (result.data.usernamePasswordFailure) {
						$('#password').val("");
						$('#verifycode').val("");
						alert(result.data.msg);
					}
				}
			}
		});
	}
</script>
<title>用户登录</title>
</head>
<body>


	   <div class="container">

<div class="row" style="margin-top:20px">
    <div class="login-container">
		<form role="form" id="loginForm" action="<%=contextPath%>/main.action" method="post">
			<fieldset>
				<h2>请登录</h2>
				<hr class="colorgraph">
				
				<div class="control-group">
					<div class="controls">
						<input type="text" name="j_username" class="form-control input-lg" placeholder="帐号/用户名">
					</div>
				</div>

				<div class="control-group">
					<div class="controls">
						<input type="password" name="j_password" class="form-control input-lg" placeholder="密码">
					</div>
				</div>
				<hr class="colorgraph">
				
				<div class="form">
					<input type="button" class="btn btn-lg btn-success btn-block" value="登录" onclick="login();"/>
					<a href="" class="btn btn-lg btn-primary btn-block">注册</a>
				</div>
			</fieldset>
		</form>
	</div>
</div>

</div>

</body>
</html>