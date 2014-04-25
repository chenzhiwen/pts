<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<%
	String contextPath = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ contextPath + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>首页</title>
</head>
	
<frameset rows="59,*" cols="*" frameborder="no" border="0" framespacing="0">
  <frame src="<%=contextPath%>/jsp/header.jsp" name="topFrame" scrolling="no" noresize="noresize" id="topFrame" title="topFrame" />
  <frameset rows="*" cols="15%,85%*" framespacing="0" frameborder="no" border="0">
    <frame src="<%=contextPath%>/jsp/menu.jsp" name="leftFrame" scrolling="no" noresize="noresize" id="leftFrame" title="leftFrame" />
    <frame src="<%=contextPath%>/jsp/main.jsp" name="mainFrame" id="mainFrame" title="mainFrame" />
  </frameset>
</frameset>

</html>