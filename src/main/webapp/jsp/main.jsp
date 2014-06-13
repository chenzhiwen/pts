<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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

<script type="text/javascript">
	$(function() {
		$(window).load(function() {
			$('.flexslider').flexslider();
		});
		
		$('.fancybox').fancybox();
		
		<%-- $.ajax({
			url : "<%=contextPath%>/outgo_listJson.action",
			success : function(data) {
				var outgoList = data['outgoList'];
				$.each(outgoList, function(index, value) {
					var outgoPanel = $('<div/>', {
					    class : 'panel panel-default',
					    style : 'width : 90%;'
					});
					outgoPanel.appendTo(document.body);
					
					var panelHeading = $('<div/>', {
						class : 'panel-heading',
						text : value['tradeName'] ? value['tradeName'] : ''
					});
					panelHeading.appendTo(outgoPanel);
					
					var bodyPanel = $('<div/>', {
						class : 'panel-body',
						text : value['remark'] ? value['remark'] : ''
					});
					bodyPanel.appendTo(outgoPanel);
					
					bodyPanel.append('<br>');
					bodyPanel.append($('<img/>', {
						src : '<%=contextPath%>/outgo_outputImage.action?recordId=' + value['id'],
						width : 300,
						height : 150
					}));

					bodyPanel.append('<br>');
					bodyPanel.append('<br>');
					bodyPanel.append('<input>', {
						class : "span5",
						style : "width: 97%",
						type : "text",
						placeholder : "我也说一句"
					});
				});
			},
			failure : function() {
				
			},
			type : 'post',
			dataType : 'json'
		}); --%>
	});
</script>
</head>
<body>

				<c:forEach var="outgo" items="${outgoList}">
					<div class="panel panel-default">
						<div class="panel-heading">
							${outgo.tradeName}
							<fmt:formatDate value="${outgo.insertTime}" type="time" />
						</div>
						<div class="panel-body">
							<div class="panel-body">
								<p>
									<c:forEach var="attachment" items="${outgo.attachmentList}">
										<c:if test="${!empty attachment.absolutePath}">
											<a class="fancybox"
												href="<%=contextPath%>/outgo_outputImage.action?absolutePath=${attachment.absolutePath}"
												data-fancybox-group="gallery"><img width="180"
												height="180"
												src="<%=contextPath%>/outgo_outputImage.action?absolutePath=${attachment.absolutePath}"
												alt="" /></a>
										</c:if>
									</c:forEach>
								</p>
								${outgo.remark}
							</div>
							<!-- 					<input style="width: 97%" type="text" placeholder="我也说一句"> -->
						</div>
						<!-- /.panel-body -->
					</div>
				</c:forEach>
	<!-- /span9 -->
	<!-- /row -->
	<!-- /container -->
</body>
</html>