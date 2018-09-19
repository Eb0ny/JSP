<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <style type="text/css">			
    .code {				
    		font-family: Arial;				
    		font-style: italic;				
    		font-weight: bold;				
    		border: 0;				
    		letter-spacing: 3px;				
    		color: blue;			
    		}		
    		
    body {
   			background: url(bg.png);
   			background-size: 100% 100%;
   			margin:0;
   			padding:0;
   }
   
   .login-form {
    width:500px;
    height:400px;
    margin:70px auto 0;
    padding-top:73px;
    position:relative;
    background-image:-*-linear-gradient(top,rgb(255,255,255),rgb(242,242,242));
    box-shadow:0 3px 3px rgba(21,62,78,0.8);
    background-color:rgb(255,255,255);
}
	.login-form:before {
    content:"";
    position:absolute;
    top:-50px;
    left:200px;
    width:102px;
    height:102px;
    padding:2px;
    border:1px solid rgb(216,216,219);
    background:#fff url("profilepicture.jpg") no-repeat 2px 2px;
}


    </style>

    <title>注册页面</title>
    
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	 <script type="text/javascript">
	 
  	// 验证用户名
  	function checkName(){
  	var name = document.getElementById("username").value;
  	var reg =/^([a-zA-Z0-9]{6,})$/i;
  	if (reg.test(name)){
  		document.getElementById("userId").innerHTML="";
  		return true;
  	  }else{
  		document.getElementById("userId").style.color="red";
  		if(name.length<6){
  			document.getElementById("userId").innerHTML="账户长度需要大于6";
  		}else{
  			document.getElementById("userId").innerHTML="账户只能使用数字和字母";
  		}
  	  	return false;
  	  }
  	}
  	
  	// 验证密码格式
  	function checkPassword1(){
  		var password = document.getElementById("password1").value;
  		var reg = /^(?![A-ZA-Z]+$)(?!\d+$)\S{7,16}$/;
  		if(!(reg.test(password))){
  			document.getElementById("passwordId1").style.color="red";
  			document.getElementById("passwordId1").innerHTML="密码格式不正确";
  			return false;
  		}else{
  			document.getElementById("passwordId1").innerHTML="";
			return true;  		
  		}
  	}
  	
  	// 验证密码输入是否一致
  	function checkPassword2(){
  		var password1 = document.getElementById("password1").value;
  		var password2 = document.getElementById("password2").value;
  		if(password1!=password2){
  			document.getElementById("passwordId2").style.color="red";
  			document.getElementById("passwordId2").innerHTML="两次密码输入不一致";
  			return false;
  		}else{
  			document.getElementById("passwordId2").innerHTML="";
  			return true;
  		}
  	}
  	
  	
  	// 验证身份证号格式
  	function checkIdNumber(){
  		var idNumber = document.getElementById("idNumber").value;
  		reg = /^(^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$)|(^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])((\d{4})|\d{3}[Xx])$)$/; 
  		if(reg.test(idNumber)){
  			document.getElementById("numberId1").innerHTML="";
  			return true;
  		}else{
  			document.getElementById("numberId1").style.color="red";
  			document.getElementById("numberId1").innerHTML="身份证号码不正确";
			return false;  		
  		}
  	}
  	
  	// 验证邮箱格式
  	function checkEmail(){
  		var email = document.getElementById("email").value;
  		var reg = /^[a-zA-Z0-9-_]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/
  		if(reg.test(email)){
  			document.getElementById("emailId").innerHTML="";
  			return true;
  		}else{
  			document.getElementById("emailId").style.color="red";
  			document.getElementById("emailId").innerHTML="邮箱格式不正确";
  			return false;
  		}
  	}
  	
  	var code; //在全局定义验证码    
  //产生验证码   
  window.onload = function() {
  	createCode();
  }
   
  function createCode() {
  	code = "";
  	var codeLength = 5; //验证码的长度   
  	var checkCode = document.getElementById("checkCode");
  	var random = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
  		'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //随机数   
  	for(var i = 0; i < codeLength; i++) { //循环操作   
  		var charIndex = Math.floor(Math.random() * 36); //取得随机数的索引   
  		code += random[charIndex]; //根据索引取得随机数加到code上   
  	}
  	checkCode.value = code; //把code值赋给验证码   
  }
  //校验验证码   
  function validate() {
  	var inputCode = document.getElementById("input").value.toUpperCase(); //取得输入的验证码并转化为大写         
  	if(inputCode.length <= 0) { //若输入的验证码长度为0   
  		alert("请输入验证码！"); //则弹出请输入验证码   
  	} else if(inputCode != code) { //若输入的验证码与产生的验证码不一致时   
  		alert("验证码输入错误！"); //则弹出验证码输入错误   
  		createCode(); //刷新验证码   
  		return false;
  	} else { //输入正确时   
  		return true; //弹出^-^   
  	}
  }

  	
  	
  	
  	// 表单验证
  	function checkForm(){
  		if(checkName()&&checkPassword1()&&checkPassword2()&&checkIdNumber()&&checkEmail()&& validate()){
  			return true;
  		}else{
  			return false;
  		}
  		
  	}
  </script>

  </head>
 
  <body  style="font-size:20px">
   	<!-- 表单  -->
	<form action="main.jsp" method="post" onsubmit="return checkForm();" class="login-form">
		<h2 align="center">用户注册</h2>
	   <table style="font-size:20px" align="center">
	   	<tr class="usename">
	   		<td>
	   			帐号：
	   		</td>
	   		<td>
	   			<input id="username" name="username" type="text" onblur="checkName()" /><br/>
	   			<span id="userId"></span>
	   		</td>
	   	</tr>
	   	<tr class="password"> 
	   		<td>密码：</td>
	   		<td><input type="password"  id="password1" onblur="checkPassword1()"/><br/><span id="passwordId1"></span></td>
	   	</tr>
	   	<tr>
	   		<td>确认密码:</td>
	   		<td><input type="password" id="password2" onblur="checkPassword2()" /><br/><span id="passwordId2"></span></td>
	   	</tr>
	   	<tr>
	   		<td>
	   			男<input type="radio" id="sex" name="sex" value="男"/>
	   			女<input type="radio" id="sex" name="sex" value="女"/>
	   		</td>
	   	</tr>
	   	<tr>
	   		<td>身份证号:</td>
	   		<td><input type="text" name="idNumber" id="idNumber" onblur="checkIdNumber()" /><br/><span id="numberId1"></span></td>
	   	</tr>
	   	<tr>
	   		<td>电子邮箱:</td>
	   		<td><input type="text" name="email" id="email" onblur="checkEmail()" /><br/><span id="emailId"></span></td>
	   	</tr>
	   	<tr>
	   		<td><input type="text" id="input" /></td>
	   		<td><input type="button" id="checkCode" class="code" onclick="createCode()" /></td>
	   		<td><a href="register.jsp" onclick="createCode()">看不清楚</a><br></td>
	   	</tr>
	   	<tr>
	   		<td colspan=2 align="center"><input type="submit" value="提交"  /></td>
	   	</tr>
	   </table>
	</form>
  </body>
</html>