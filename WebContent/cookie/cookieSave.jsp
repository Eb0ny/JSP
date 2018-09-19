<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.net.URLEncoder"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cookie Save</title>
</head>
<body>
<%
	Cookie cookie = new Cookie(URLEncoder.encode("姓名","utf-8"),
						URLEncoder.encode("杰克","utf-8"));
	cookie.setMaxAge(60*60);
	response.addCookie(cookie);
	String userIp = request.getRemoteAddr();
	cookie = new Cookie("userIp",userIp);
	cookie.setMaxAge(60*10);
	response.addCookie(cookie);
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy年 MM月 dd日 h:m:s");
	Date date = new Date();
	String logintime = sdf.format(date);
	cookie = new Cookie("loginTime",URLEncoder.encode(logintime,"UTF-8"));
	cookie.setMaxAge(20*60);
	response.addCookie(cookie);
	out.println("成功保存了姓名、用户IP地址和登录时间到客户机的cookie");
	
%>	<br>
	<a href="cookieread.jsp">去读取Cookie</a>

</body>
</html>