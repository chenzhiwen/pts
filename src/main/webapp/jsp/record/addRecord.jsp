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
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">记账</h1>
			</div>
		</div>
		
		<div class="container">
			<div class="row clearfix">
				<div class="col-md-12 column">
					<div class="tabbable" id="tabs-904511">
						<ul class="nav nav-tabs">
							<li class="active">
								<a href="#panel-45613" data-toggle="tab">支出</a>
							</li>
							<li>
								<a href="#panel-656694" data-toggle="tab">收入</a>
							</li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="panel-45613">
								<div class="row">
									<div class="col-lg-12">
										<div class="panel panel-default">
											<div class="panel-heading">支出信息</div>
											<div class="panel-body">
												<form role="form" class="form-horizontal" id="contactForm"
													onsubmit="send(); return false;">
													<br>
													<div class="form-group">
														<label for="name" class="col-lg-2 col-sm-3">消费金额</label>
														<div class="col-lg-5 col-sm-5">
															<input type="text" class="form-control" name="name" id="name"
																required="required">
														</div>
													</div>
						
													<div class="form-group">
														<label class="col-lg-2 col-sm-3">服务商家</label>
														<div class="col-lg-5 col-sm-5">
															<input type="email" class="form-control" name="email"
																id="email" required="required">
														</div>
													</div>
						
													<div class="form-group">
														<label class="col-lg-2 col-sm-3">支付账户</label>
														<div class="col-lg-5 col-sm-5">
															<select class="form-control">
																<option>我的钱包</option>
																<option>支付宝</option>
																<option>银行卡</option>
																<option>财付通</option>
															</select>
														</div>
													</div>
						
													<div class="form-group">
														<label class="col-lg-2 col-sm-3">图片</label>
														<div class="col-lg-5 col-sm-5">
															<input type="file">
														</div>
													</div>
						
													<div class="form-group">
														<label for="message" class="col-lg-2">备注</label>
														<div class="col-lg-5 col-sm-5">
															<textarea class="form-control" name="message" id="message"
																required="required"></textarea>
														</div>
													</div>
						
													<div class="form-group">
														<label class="col-lg-3 col-sm-3"> <input type="checkbox">晒单
														</label>
													</div>
						
													<button type="submit" class="btn btn-primary"
														style="margin-left: 20px">提交</button>
													<button type="reset" class="btn btn-default">重置</button>
												</form>
											</div>
											<!-- /.panel-body -->
											<!-- /.panel -->
										</div>
										<!-- /.col-lg-12 -->
									</div>
									<!-- /.row -->
								</div>
							</div>
							<div class="tab-pane" id="panel-656694">
								<p>
									收入
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>