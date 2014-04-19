<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/bootstrap.css" rel="stylesheet">
<!-- <link href="css/bootstrap-responsive.css" rel="stylesheet"> -->
<link href="js/google-code-prettify/prettify.css" rel="stylesheet">

<script src="js/jquery.js"></script>
<script src="js/google-code-prettify/prettify.js"></script>
<script src="js/bootstrap-transition.js"></script>
<script src="js/bootstrap-alert.js"></script>
<script src="js/bootstrap-modal.js"></script>
<script src="js/bootstrap-dropdown.js"></script>
<script src="js/bootstrap-scrollspy.js"></script>
<script src="js/bootstrap-tab.js"></script>
<script src="js/bootstrap-tooltip.js"></script>
<script src="js/bootstrap-popover.js"></script>
<script src="js/bootstrap-button.js"></script>
<script src="js/bootstrap-collapse.js"></script>
<script src="js/bootstrap-carousel.js"></script>
<script src="js/bootstrap-typeahead.js"></script>
<script src="js/application.js"></script>
<title>Insert title here</title>
</head>
<body>
	<table style="width: 100%; height: 100%" align="center" >
		<tr>
			<td height="10"><tiles:insertAttribute name="header" /></td>
		</tr>
		<tr>
			<td height="84%" width="100%"><tiles:insertAttribute name="body" /></td>
		</tr>
		<tr>
			<td height="10"><tiles:insertAttribute
					name="footer" /></td>
		</tr>
	</table>
</body>
</html>