<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/bootstrap-2.0.2.min.css" rel="stylesheet">

<!-- Core Scripts - Include with every page -->
<script src="js/jquery-1.10.2.js"></script>
<script src="js/bootstrap-2.0.2.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<table style="width: 100%; height: 100%" align="center" border="1">
		<tr>
			<td height="6%" colspan="2"><tiles:insertAttribute name="header" /></td>
		</tr>
		<tr>
			<td height="84%" width="100%"><tiles:insertAttribute name="body" /></td>
		</tr>
		<tr>
			<td height="10%" colspan="2"><tiles:insertAttribute	name="footer" /></td>
		</tr>
	</table>
</body>
</html>