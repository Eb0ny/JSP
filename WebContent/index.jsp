<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>菜鸟教程(runoob.com)</title>
<script>
function myFunction(){
	var x=document.getElementById("fname");
	x.value=x.value.toUpperCase();
}
</script>
</head>
<body>

输入你的名字: <input type="text" id="fname" onblur="myFunction()">
<p>当你离开输入框, 函数将被触发将输入文字转换成大写。</p>

</body>
</html>