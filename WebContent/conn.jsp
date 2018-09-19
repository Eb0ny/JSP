<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP读取数据库</title>
</head>
<body>
	<table border="1" align="center">
		<tr>	
			<th>书号</th>
			<th>书名</th>
			<th>作者</th>
			<th>出版社</th>
			<th>单价</th>
			<th>出版日期</th>
		</tr>
		<%
			String driverClass = "com.mysql.jdbc.Driver";
			String url = "jdbc:mysql://localhost:3306/hwjsp";
			String user = "root";
			String password = "";
			Connection conn;
			try{
				Class.forName(driverClass).newInstance();
				conn = DriverManager.getConnection(url,user,password);    //connect mysql
				Statement stmt = conn.createStatement();
				String sql = "select * from tb_books";
				ResultSet rs = stmt.executeQuery(sql);
				while(rs.next()){
			%>
			<tr>
				<td><%=rs.getString("ISBN")%></td>
				<td><%=rs.getString("bookName")%></td>
				<td><%=rs.getString("publishing")%></td>
				<td><%=rs.getString("writer")%></td>
				<td><%=rs.getString("price")%></td>
				<td><%=rs.getString("date")%></td>
			</tr>
			<%
				}
			} catch(Exception ex){
					ex.printStackTrace();	
			}
			%>
			
				
					
		
	</table>

</body>
</html>