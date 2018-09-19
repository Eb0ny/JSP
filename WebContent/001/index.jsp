<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="show.jsp" method="post">
		<ul style="list-style;none;line-height;30px">
			<li>输入用户姓名：<input type="text" name="name"/><br></li>
			<li>选择性别：
				<input name="sex" type="radio" value="男"/>男
				<input name="sex" type="radio" value="女"/>女
			</li>
			<li> 
				选择密码提示问题：
				<select name="question">
					<option value="母亲生日">母亲生日</option>
					<option value="宠物名称">宠物名称</option>
					<option value="电脑配置">电脑配置</option>
				</select>
			</li>
			<li>请输入问题答案<input type="text" name="key"/></li>
			<li>
				请输入个人爱好
				<div>
					<input name="like" type="checkbox" value="唱歌跳舞"/>唱歌跳舞
					<input name="like" type="checkbox" value="上网冲浪"/>上网冲浪
					<input name="like" type="checkbox" value="户外登山"/>户外登山<br/>
					<input name="like" type="checkbox" value="体育运动"/>体育运动
					<input name="like" type="checkbox" value="读书看报"/>读书看报
					<input name="like" type="checkbox" value="欣赏电影"/>欣赏电影
				</div>
			</li>
			<li><input type="submit" value="提交"/></li>
		</ul>
	</form>
</body>
</html>