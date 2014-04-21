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

<script src="<%=contextPath%>/js/jquery.js"></script>
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
<title>账单</title>
</head>
<body>
<table class="table table-striped table-bordered table-condensed" style="width: 90%;height: 100%;">
  <thead>
    <tr>
      <th>金额</th>
      <th>心得</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>1</td>
      <td>1</td>
    </tr>
  </tbody>
</table>
</body>
</html>