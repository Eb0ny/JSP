<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cookie-Read</title>
</head>
<body>
	使用forreach循环读取 Cookie数组，并输出其中所有的Cookie：<br>
	<%
		if(request.getCookies()!=null){
			for(Cookie cookie : request.getCookies()){
				String name = URLDecoder.decode(cookie.getName(),"utf-8");
				String value = URLDecoder.decode(cookie.getValue(),"utf-8");
				out.println("<br>cookie属性："+name+"="+value);
				
			}
		}
	%>
	<p>使用for循环查找某个cookie</p>
	<%
		Cookie myCookie[] = request.getCookies();
		Cookie cookie = null;
		for(int i = 0;i<myCookie.length;i++){
			cookie = myCookie[i];
			if(cookie.getName().equals("userIp")){
	%>
		你好，你的上次登录IP地址是<%= cookie.getValue() %>!
	<% 
			}
		}
		
	%>
</body>
</html>