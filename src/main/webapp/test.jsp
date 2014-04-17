<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/bootstrap-responsive.css" rel="stylesheet">
    <link href="css/docs.css" rel="stylesheet">
    <link href="js/google-code-prettify/prettify.css" rel="stylesheet">

<script src="js/jquery.js"></script>
    <script src="js/google-code-prettify/prettify.js"></script>
    <script src="js/bootstrap-transition.js"></script>
    <script src="js/bootstrap-alert.js"></script>
    <script src="js/bootstrap-modal.js"></script>
    <script src="js/bootstrap-dropdown.js"></script>
    <script src="js/bootstrap-scrollspy.js"></script>
    <script src="js/bootstrap-tab.js"></script>
    <script src="js/bootstrap-tooltip.js"></script>
    <script src="js/bootstrap-popover.js"></script>
    <script src="js/bootstrap-button.js"></script>
    <script src="js/bootstrap-collapse.js"></script>
    <script src="js/bootstrap-carousel.js"></script>
    <script src="js/bootstrap-typeahead.js"></script>
    <script src="js/application.js"></script>
    
<title>Insert title here</title>
</head>
<body>

	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a> <a class="brand"
					href="http://wrongwaycn.github.io/bootstrap/docs/examples/starter-template.html#">大家一起来记账</a>
				<div class="nav-collapse">
					<ul class="nav">
						<li class="active"><a
							href="http://wrongwaycn.github.io/bootstrap/docs/examples/starter-template.html#">首页</a></li>
						<li><a
							href="http://wrongwaycn.github.io/bootstrap/docs/examples/starter-template.html#about">记账</a></li>
						<li><a
							href="http://wrongwaycn.github.io/bootstrap/docs/examples/starter-template.html#contact">联系</a></li>
					</ul>
					
					<form class="navbar-search pull-right">
					  <input type="text" class="search-query" placeholder="搜索">
					</form>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>
		<form class="form-horizontal">
			<div class="container">
				<fieldset>
					<legend>记账</legend>
					<div class="control-group">
						<label class="control-label" for="input01">金额</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="input01">
							<!-- <p class="help-block">除了文本域之外，任何HTML5输入框都是该样式</p> -->
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="select01">支出账户</label>
						<div class="controls">
							<select id="select01">
								<option>请选择</option>
								<option>我的钱包</option>
								<option>支付宝</option>
								<option>财付通</option>
							</select>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="fileInput">晒照片</label>
						<div class="controls">
							<input class="input-file" id="fileInput" type="file">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="optionsCheckbox">晒单</label>
						<div class="controls">
							<label class="checkbox"> <input type="checkbox"
								id="optionsCheckbox" value="option1"> 如果选中了好友可以查看你的消费记录
							</label>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="textarea">心得</label>
						<div class="controls">
							<textarea class="input-xlarge" id="textarea" rows="3"></textarea>
						</div>
					</div>
					<div class="form-actions">
						<button type="submit" class="btn btn-primary">提交</button>
						<button class="btn">取消</button>
					</div>
				</fieldset>
			</div>
		</form>
</body>
</html>