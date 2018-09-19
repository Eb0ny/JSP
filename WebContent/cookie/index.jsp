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
	String welcome = "第一次访问";
	String[] info = new String[]{"","",""};
	Cookie[] cook = request.getCookies();
	if(cook!=null){
		for(int i=0;i<cook.length;i++){
			if(cook[i].getName().equals("mrCookInfo")){
				info = cook[i].getValue().split("#");
				welcome = ",欢迎回来！";
			}
		}
	}
%>
<%=info[0] %>
<%= welcome %>
<form  action = "show.jsp" method ="post"  >
姓名 :    <input type = "text"  name ="name" value= <%=info[0] %>><p>
出生日期  ：<input type = "text"  name ="birthday"   value =<%=info[1] %>><p> 
邮箱地址:  <input type = "text"  name ="mail"  value= <%=info[2] %>><p>
 登陆 :    <input type = "submit" value = "submit" ><p>
</form>
</body>

</body>
</html>