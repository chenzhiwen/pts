<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
<link href="<%=contextPath%>/css/font-awesome.css" rel="stylesheet">
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
<title>Insert title here</title>
</head>
<body>
<%-- <div class="panel panel-default" style="width: 60%">
	<div class="panel-body">
		<div class="panel-group">
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
	        ${outgo.remark}<br><br>
	        <img alt="" src="<%=contextPath%>/outgo_outputImage.action" style="width: 300px; height: 100px">
	        <input class="span5" style="width: 97%" type="text" placeholder="我也说一句">
	    </div>
	    <!-- /.panel-body -->
	</div>
</c:forEach>
</body>
</html>