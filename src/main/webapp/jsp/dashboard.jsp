<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<br><br>
	<div class="tabbable">
		<ul class="nav nav-tabs">
			<li class="active"><a href="#1" data-toggle="tab">支出</a></li>
			<li><a href="#2" data-toggle="tab">收入</a></li>
		</ul>
		<div class="tab-content">
			<div class="tab-pane active" id="1">
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

</body>
</html>