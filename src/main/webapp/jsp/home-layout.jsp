<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/css/bootstrap.css" />" rel="stylesheet">
<link href="<c:url value="/css/bootstrap-responsive.css" />"
	rel="stylesheet">
<link href="<c:url value="/css/datepicker.css" />" rel="stylesheet">
<link href="<c:url value="/css/font-awesome.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/js/google-code-prettify/prettify.css" />"
	rel="stylesheet">
<link href="<c:url value="/css/flexslider.css" />" rel="stylesheet"
	type="text/css" media="screen" />
<link href="<c:url value="/css/jquery.fancybox.css" />" rel="stylesheet"
	type="text/css" media="screen" />

<script src="<c:url value="/js/jquery.js" />"></script>
<script src="<c:url value="/js/google-code-prettify/prettify.js" />"></script>
<script src="<c:url value="/js/bootstrap-2.3.min.js" />"></script>
<script src="<c:url value="/js/application.js" />"></script>
<script src="<c:url value="/js/jquery.flexslider.js" />"></script>
<script src="<c:url value="/js/jquery.fancybox.js" />"></script>
<script src="<c:url value="/js/bootstrap-datepicker.js" />"></script>
<script src="<c:url value="/js/bootstrap-datepicker.zh-CN.js" />"></script>
<script src="<c:url value="/js/bootstrap-paginator.js" />"></script>

<title><tiles:getAsString name="title" /></title>
</head>
<body>
	<tiles:insertAttribute name="header" />
	<br />
	<br />
	<br />
	<tiles:insertAttribute name="body" />
</body>
</html>