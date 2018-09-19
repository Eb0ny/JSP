<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<ul>
	<li>输入用户姓名:<%=new String(request.getParameter("name").getBytes("iso8859-1"),"utf-8") %></li>
	<li>选择性别: <%=new String(request.getParameter("sex").getBytes("iso8859-1"),"utf-8") %></li>
	<li>选密码提示问题： <%=new String(request.getParameter("question").getBytes("iso8859-1"),"utf-8") %></li>
	<li>请输入问题答案：<%=new String(request.getParameter("key").getBytes("iso8859-1"),"utf-8") %> </li>
	<li>请输入个人爱好：
	<%
		String[] like=request.getParameterValues("like");
		for(int i=0;i<like.length;i++){
	%>
	<%=new String(like[i].getBytes("ISO8859_1"),"UTF-8")+"&nbsp;&nbsp;" %>
	<%	}
	%>
	</li>
	
</ul>
</body>
</html>