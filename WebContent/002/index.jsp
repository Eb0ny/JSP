<%@page import="java.util.Date"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
		request.setAttribute("date",new Date());
%>
	<ul style="line-height:24px">
	<li>协议：<%=request.getProtocol() %></li>
	<li><%=request.getMethod() %></li>
	
	<li><%=request.getAttribute("date") %></li>
	<% request.removeAttribute("date"); %>
	<li><%=request.getAttribute("date") %></li>
	</ul>
</body>
</html>