<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String contextPath = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ contextPath + "/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=contextPath%>/css/bootstrap.css" rel="stylesheet">
<link href="<%=contextPath%>/css/datepicker.css" rel="stylesheet">
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
<script src="<%=contextPath%>/js/bootstrap-datepicker.js"></script>
<script src="<%=contextPath%>/js/bootstrap-datepicker.zh-CN.js"></script>
<script type="text/javascript">
$(function() {
	$('.datepicker').datepicker({
		format: 'yyyy-mm-dd',
		language : 'zh-CN',
		todayBtn : "true",
		autoclose : true
	});

	if("${success}") {
		$(".alert").alert();
		window.setInterval(function() {
			$(".alert").alert('close');
		}, 3000);
	} else {
		$(".alert").alert('close');
	}
	
	$.ajax({
		url : "<%=contextPath%>/account_list.action",
		data : {a : 123},
		success : function(data) {
			var accountList = data['accountList'];
			$.each(accountList, function(index, value) {
				$('#accountId').append('<option value="' + value['id'] + '">' + value['name'] + '</option>');
			});
		},
		failure : function() {
			
		},
		type : 'post',
		dataType : 'json'
	});
});
</script>
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
								<form class="form-horizontal" action="<%=contextPath%>/outgo_add.action" method="post">
									<div class="container">
										<fieldset>
											<legend>支出</legend>
											<div class="alert alert-info">
									            <a class="close" data-dismiss="alert" href="#">×</a>
									            <strong>提示信息！</strong> 支出信息添加成功
									          </div>
											<div class="control-group">
								            <label class="control-label" for="appendedInput">支出金额</label>
								            <div class="controls">
								              <div class="input-append">
								                <input name="money" required="true" class="span3" id="appendedInput" size="16" type="text"><span class="add-on">.00</span>
								              </div>
								            </div>
								          </div>
											<div class="control-group">
												<label class="control-label">商家名称</label>
												<div class="controls">
													<input type="text" class="input-xlarge span3" name="tradeName">
												</div>
											</div>
											<div class="control-group">
												<label class="control-label">支出账户</label>
												<div class="controls">
													<select class="span3" id="accountId" name="account.id" required="true">
													</select>
												</div>
											</div>
											<div class="control-group">
												<label class="control-label">消费日期</label>
												<div class="controls">
													<input type="text" class="datepicker" name="outgoDate" required="true">
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
														id="optionsCheckbox" value="1" name="share">
														如果选中了好友可以查看你的消费记录
													</label>
												</div>
											</div>
											<div class="control-group">
												<label class="control-label" for="textarea">心得</label>
												<div class="controls">
													<textarea class="input-xlarge span5" id="textarea" rows="3" name="remark"></textarea>
												</div>
											</div>
											<div class="form-actions">
												<button type="submit" class="btn btn-primary" id="outgoSubmit">记一笔</button>
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