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
<link href="<%=contextPath%>/css/bootstrap-responsive.css"
	rel="stylesheet">
<link href="<%=contextPath%>/css/datepicker.css" rel="stylesheet">
<link href="<%=contextPath%>/css/font-awesome.css" rel="stylesheet">
<link href="<%=contextPath%>/js/google-code-prettify/prettify.css"
	rel="stylesheet">
<link href="<%=contextPath%>/css/flexslider.css" rel="stylesheet"
	type="text/css" media="screen" />
<link href="<%=contextPath%>/css/jquery.fancybox.css" rel="stylesheet"
	type="text/css" media="screen" />

<script src="<%=contextPath%>/js/jquery.js"></script>
<script src="<%=contextPath%>/js/bootstrap-alert.js"></script>
<script src="<%=contextPath%>/js/bootstrap-tab.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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

<style type="text/css">
/* Override some defaults */
html,body {
	background-color: #eee;
}

body {
	padding-top: 80px;
}

.container {
	width: 600px;
}



.login-form {
	margin-left: 65px;
}

legend {
	margin-right: -50px;
	font-weight: bold;
	color: #404040;
}
</style>

<title>用户登录</title>
</head>
<body>

	<div class="container">
		<div class="content">
			<div class="row">
				<div class="" id="loginModal">
					<div class="modal-header">
						<h3>Have an Account?</h3>
					</div>
					<div class="modal-body">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#login" data-toggle="tab">用户登录</a></li>
							<li><a href="#create" data-toggle="tab">创建用户</a></li>
						</ul>
						<div id="myTabContent" class="tab-content">
							<div class="tab-pane active in" id="login">
								<form class="form-horizontal" method="POST" id="loginForm">
									<fieldset>
										<div id="legend">
											<legend class="">登录</legend>
										</div>
										<div class="control-group">
											<!-- Username -->
											<label class="control-label" for="username">用户名</label>
											<div class="controls">
												<input type="text" id="username" name="j_username"
													placeholder="" class="input-xlarge" required="true">
											</div>
										</div>

										<div class="control-group">
											<!-- Password-->
											<label class="control-label" for="password">密码</label>
											<div class="controls">
												<input type="password" id="password" name="j_password"
													placeholder="" class="input-xlarge" required="true">
											</div>
										</div>

										<div class="control-group">
											<!-- Button -->
											<div class="controls">
												<input type="button" class="btn btn-success" onclick="login();" value="登录" />
											</div>
										</div>
									</fieldset>
								</form>
							</div>
							<div class="tab-pane fade" id="create">
								<form id="tab">
									<label>Username</label> <input type="text" value=""
										class="input-xlarge"> <label>First Name</label> <input
										type="text" value="" class="input-xlarge"> <label>Last
										Name</label> <input type="text" value="" class="input-xlarge">
									<label>Email</label> <input type="text" value=""
										class="input-xlarge"> <label>Address</label>
									<textarea value="Smith" rows="3" class="input-xlarge">
											</textarea>
									<div>
										<button class="btn btn-primary">Create Account</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>