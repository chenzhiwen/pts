<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common/common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=contextPath%>/css/bootstrap.css" rel="stylesheet">
<!-- <link href="css/bootstrap-responsive.css" rel="stylesheet"> -->
<link href="<%=contextPath%>/js/google-code-prettify/prettify.css" rel="stylesheet">

<script src="<%=contextPath%>/js/jquery.js"></script>
<script src="<%=contextPath%>/js/google-code-prettify/prettify.js"></script>
<script src="<%=contextPath%>/js/bootstrap-transition.js"></script>
<script src="<%=contextPath%>/js/bootstrap-alert.js"></script>
<script src="<%=contextPath%>/js/bootstrap-modal.js"></script>
<script src="<%=contextPath%>/js/bootstrap-dropdown.js"></script>
<script src="<%=contextPath%>/js/bootstrap-scrollspy.js"></script>
<script src="<%=contextPath%>/js/bootstrap-tab.js"></script>
<script src="<%=contextPath%>/js/bootstrap-tooltip.js"></script>
<script src="<%=contextPath%>/js/bootstrap-popover.js"></script>
<script src="<%=contextPath%>/js/bootstrap-button.js"></script>
<script src="<%=contextPath%>/js/bootstrap-collapse.js"></script>
<script src="<%=contextPath%>/js/bootstrap-carousel.js"></script>
<script src="<%=contextPath%>/js/bootstrap-typeahead.js"></script>
<script src="<%=contextPath%>/js/application.js"></script>

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="tabbable">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#1" data-toggle="tab">支出</a></li>
					<li><a href="#2" data-toggle="tab">收入</a></li>
				</ul>
				<div class="container">
					<div class="row">
						<div class="tab-content">
							<div class="tab-pane active" id="1">
								<form class="form-horizontal">
									<div class="container">
										<fieldset>
											<legend>支出</legend>
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
														id="optionsCheckbox" value="option1">
														如果选中了好友可以查看你的消费记录
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
							</div>
							<div class="tab-pane" id="2">
								<p>这里是章节 2.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /container -->

</body>
</html>