<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<title><tiles:insertAttribute name="title" ignore="true" /></title>
</head>
<body>
		<table style="width: 100%; height: 100%" border="1" align="center">
			<tr>
				<td height="1%" colspan="2"><tiles:insertAttribute
						name="header" /></td>
			</tr>
			<tr>
				<td height="90%" width="18%"><tiles:insertAttribute name="menu" /></td>
				<td height="90%" width="82%"><tiles:insertAttribute name="body" /></td>
			</tr>
			<tr>
				<td height="5%" colspan="2"><tiles:insertAttribute
						name="footer" /></td>
			</tr>
		</table>
</body>
</html>