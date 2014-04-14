<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">记账</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">支出信息</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-6">
								<form role="form" class="form-horizontal" id="contactForm" onsubmit="send(); return false;">
					            <br><br>
					            <div class="form-group">
					                <label for="name" class="col-lg-3 col-sm-3">消费金额</label>
					                <div class="col-lg-7 col-sm-7">
					                    <input type="text" class="form-control" name="name" id="name" required="required">
					                </div>
					            </div>
					
					            <div class="form-group">
					                <label class="col-lg-3 col-sm-3">服务商家</label>
					                <div class="col-lg-7 col-sm-7">
					                    <input type="email" class="form-control" name="email" id="email" required="required">
					              </div>
					            </div>
					
					            <div class="form-group">
					                <label for="message" class="col-lg-3">My Label 4</label>
					                <div class="col-lg-10 col-sm-10">
					                     <textarea class="form-control" name="message" id="message" required="required"></textarea>
					                </div>
					            </div>
					
					            <button type="submit" class="btn btn-primary" id="submit" style="margin-left: 20px">Send</button>
					        </form>
        
								<form role="form">
									<div class="form-group">
										<label class="col-lg-3 col-sm-3">消费金额</label> 
										<div class="col-lg-7 col-sm-7">
											<input type="number" class="form-control">
										</div>
									</div>
									<div class="form-group">
										<label class="col-lg-3 col-sm-3">服务商家</label>
											<div class="col-lg-7 col-sm-7">
												<input class="form-control">
											</div>
									</div>
									<div class="form-group">
										<label class="col-xs-4">支付账户</label> <select class="form-control">
											<option>我的钱包</option>
											<option>支付宝</option>
											<option>银行卡</option>
											<option>财付通</option>
										</select>
									</div>
									<div class="form-group">
										<label class="col-xs-4">图片</label> <input type="file">
									</div>
									<div class="form-group">
										<label class="col-xs-4">备注</label>
										<textarea class="form-control" rows="3"></textarea>
									</div>
									<div class="form-group">
										<label class="checkbox-inline"> <input type="checkbox">分享
										</label>
									</div>
									<button type="submit" class="btn btn-primary" style="margin-left: 20px">提交</button>
									<button type="reset" class="btn btn-default">重置</button>
								</form>
							</div>
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
		</div>
	</div>
</body>
</html>