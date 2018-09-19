<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body >
<div style="font-size:24px">
<%
	request.setCharacterEncoding("UTF-8");
	String username = request.getParameter("username");
	String sex = request.getParameter("sex");
	String idNumber = request.getParameter("idNumber");
	String email = request.getParameter("email");
	
	if(username.equals("administrator")){
		out.println("123");
		response.sendRedirect("Error.jsp");
	}else{
	 	out.println("<h1 align='center'>欢迎你"+username+"</h1>");
	 	out.println("<p>你的性别是:"+sex+"</p>");
	 	out.println("<p>身份证号是:"+idNumber+"</p>");
	 	out.println("<p>邮箱地址是:"+email+"</p>");
	} 
%>
</div>

</body>
</html>	