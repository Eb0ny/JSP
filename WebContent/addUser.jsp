<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP的include标签</title>
</head>
<body>
	<form action="index.jsp" method="post">
		<table align="center">
			<tr>
				<td align="center" colspan="2">
					<h3>添加用户</h3>
				</td>
			</tr>
			<tr>
				<td>姓名:</td>
				<td><input name="name" type="text"></td>
			</tr>
			<tr>
				<td>性别：</td>
				<td>
					<input name="sax" type="radio" value="男" checked="checked">男
					<input name="sax" type="radio" value="女">女
				</td>
			</tr> 
			<tr>
				<td align="center" colspan="2">
					<input type="submit" value="添加">
					<input type="reset" value="重置">
				</td>
			</tr>
		</table>
	</form>

</body>
</html>