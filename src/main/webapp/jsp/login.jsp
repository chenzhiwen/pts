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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script type="text/javascript">

	$(function() {
		$("#myModal").modal({keyboard: false});
	})

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

<!-- <div id="loginModalDiv">
	<button id="loginModal" class="btn btn-primary btn-lg" href="#signup" data-toggle="modal" data-target=".bs-modal-sm">Sign In/Register</button>
 </div> -->

<!-- Modal -->
<div class="modal fade bs-modal-sm" id="myModal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
        <br>
        <div class="bs-example bs-example-tabs">
            <ul id="myTab" class="nav nav-tabs">
              <li class="active"><a href="#signin" data-toggle="tab">登录</a></li>
              <li class=""><a href="#signup" data-toggle="tab">注册</a></li>
              <li class=""><a href="#why" data-toggle="tab">关于?</a></li>
            </ul>
        </div>
      <div class="modal-body">
        <div id="myTabContent" class="tab-content">
        <div class="tab-pane fade in" id="why">
        <p>We need this information so that you can receive access to the site and its content. Rest assured your information will not be sold, traded, or given to anyone.</p>
        <p></p><br> Please contact <a mailto:href="JoeSixPack@Sixpacksrus.com"></a>JoeSixPack@Sixpacksrus.com</a> for any other inquiries.</p>
        </div>
        <div class="tab-pane fade active in" id="signin">
            <form class="form-horizontal" id="loginForm">
            <fieldset>
            <!-- Sign In Form -->
            <!-- Text input-->
            <div class="control-group">
              <div class="controls">
                <input required="" id="userid" name="j_username" type="text" class="form-control" placeholder="用户名" class="input-medium" required="">
              </div>
            </div>

            <!-- Password input-->
            <div class="control-group">
              <div class="controls">
                <input required="" id="passwordinput" name="j_password" class="form-control" type="password" placeholder="密码" class="input-medium">
              </div>
            </div>

            <!-- Multiple Checkboxes (inline) -->
            <div class="control-group">
              <label class="control-label" for="rememberme"></label>
              <div class="controls">
                <label class="checkbox inline" for="rememberme-0">
                  <input type="checkbox" name="rememberme" id="rememberme-0" value="Remember me">记住我</label>
              </div>
            </div>

            <!-- Button -->
            <div class="control-group">
              <label class="control-label" for="signin"></label>
              <div class="controls">
              	<input id="signin" type="button" value="登录" class="btn btn-success" onclick="login();"/>
              	<input type="reset" value="重置" class="btn btn-primary"/>
              </div>
            </div>
            </fieldset>
            </form>
        </div>
        <div class="tab-pane fade" id="signup">
            <form class="form-horizontal">
            <fieldset>
            <!-- Sign Up Form -->
            <!-- Text input-->
            <div class="control-group">
              <label class="control-label" for="Email">Email:</label>
              <div class="controls">
                <input id="Email" name="Email" class="form-control" type="text" placeholder="JoeSixpack@sixpacksrus.com" class="input-large" required="">
              </div>
            </div>
            
            <!-- Text input-->
            <div class="control-group">
              <label class="control-label" for="userid">Alias:</label>
              <div class="controls">
                <input id="userid" name="userid" class="form-control" type="text" placeholder="JoeSixpack" class="input-large" required="">
              </div>
            </div>
            
            <!-- Password input-->
            <div class="control-group">
              <label class="control-label" for="password">Password:</label>
              <div class="controls">
                <input id="password" name="password" class="form-control" type="password" placeholder="********" class="input-large" required="">
                <em>1-8 Characters</em>
              </div>
            </div>
            
            <!-- Text input-->
            <div class="control-group">
              <label class="control-label" for="reenterpassword">Re-Enter Password:</label>
              <div class="controls">
                <input id="reenterpassword" class="form-control" name="reenterpassword" type="password" placeholder="********" class="input-large" required="">
              </div>
            </div>
            
            <!-- Multiple Radios (inline) -->
            <br>
            <div class="control-group">
              <label class="control-label" for="humancheck">Humanity Check:</label>
              <div class="controls">
                <label class="radio inline" for="humancheck-0">
                  <input type="radio" name="humancheck" id="humancheck-0" value="robot" checked="checked">I'm a Robot</label>
                <label class="radio inline" for="humancheck-1">
                  <input type="radio" name="humancheck" id="humancheck-1" value="human">I'm Human</label>
              </div>
            </div>
            
            <!-- Button -->
            <div class="control-group">
              <label class="control-label" for="confirmsignup"></label>
              <div class="controls">
                <button id="confirmsignup" name="confirmsignup" class="btn btn-success">Sign Up</button>
              </div>
            </div>
            </fieldset>
            </form>
      </div>
    </div>
      </div>
      <div class="modal-footer">
      <center>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </center>
      </div>
    </div>
  </div>
</div>
</body>
</html>