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
<link href="<%=contextPath%>/css/bootstrap.css" rel="stylesheet">
<link href="<%=contextPath%>/css/bootstrap-responsive.css" rel="stylesheet">
<link href="<%=contextPath%>/css/datepicker.css" rel="stylesheet">
<link href="<%=contextPath%>/css/font-awesome.css" rel="stylesheet">
<link href="<%=contextPath%>/js/google-code-prettify/prettify.css"
	rel="stylesheet">
<link href="<%=contextPath%>/css/flexslider.css" rel="stylesheet"
	type="text/css" media="screen" />
<link href="<%=contextPath%>/css/jquery.fancybox.css?v=2.1.5" rel="stylesheet" type="text/css" media="screen" />
	
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
<script src="<%=contextPath%>/js/jquery.flexslider.js"></script>
<script src="<%=contextPath%>/js/jquery.fancybox.js?v=2.1.5"></script>
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
<title>Insert title here</title>
</head>
<body>
	<%-- <div class="panel panel-default" style="width: 90%">
	<div class="panel-body">
		<div class="panel-group" id="zoneGroupDiv">
		<c:forEach var="outgo" items="${outgoList}">
			<div class="panel panel-default">
			    <div class="panel-heading">
			        ${outgo.tradeName}  
			        <fmt:formatDate value="${outgo.insertTime}" type="time"/>
			    </div>
			    <div class="panel-body">
			        ${outgo.remark}
			    </div>
			    <!-- /.panel-body -->
			</div>
		</c:forEach>
		</div>
	</div>
</div> --%>

<c:forEach var="outgo" items="${outgoList}">
	<div class="panel panel-default span6">
	    <div class="panel-heading">
	        ${outgo.tradeName}  
	        <fmt:formatDate value="${outgo.insertTime}" type="time"/>
	    </div>
	    <div class="panel-body">
       		<div class="panel-body">
				<p>
			        <c:forEach var="attachment" items="${outgo.attachmentList}">
			        	<c:if test="${!empty attachment.absolutePath}">
							<a class="fancybox" href="<%=contextPath%>/outgo_outputImage.action?absolutePath=${attachment.absolutePath}" data-fancybox-group="gallery"><img width="180" height="180" src="<%=contextPath%>/outgo_outputImage.action?absolutePath=${attachment.absolutePath}" alt="" /></a>							
			        	</c:if>
			        </c:forEach>
				</p>
		        <br>${outgo.remark}
		    </div>
	        <%-- <img alt="" src="<%=contextPath%>/outgo_outputImage.action?recordId=${outgo.id}" > --%>
	        <input class="span5" style="width: 97%" type="text" placeholder="我也说一句">
	    </div>
	    <!-- /.panel-body -->
	</div>
</c:forEach>

</body>
</html>