// 全局的ajax访问，处理ajax清求时sesion超时
$.ajaxSetup({
	contentType : "application/x-www-form-urlencoded;charset=utf-8",
	complete : function(XMLHttpRequest, textStatus) {
		var sessionstatus = XMLHttpRequest
				.getResponseHeader("sessionstatus"); // 通过XMLHttpRequest取得响应头，sessionstatus，
				console.info(sessionstatus);
		if (sessionstatus == "timeout") {
			// 如果超时就处理 ，指定要跳转的页面
			top.location.href = "/pts/index.html";
		}
	}
});