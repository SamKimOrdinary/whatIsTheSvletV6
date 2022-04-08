<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html language="ko">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	//-----------------------------
	// mySubmit--validation
	//-----------------------------
	function mySubmit(frm){
		// Notice!!! Selector!!!
		var ret = false;
		var name = frm.name.value;
		var age = frm.age.value;
		
		if((name.length > 0) && (age.length > 0)) ret = true;
		
		return ret;
	}
	
	//-----------------------------
	// callJScript
	//-----------------------------
	function callJScript(){
		// Notice!!! Selector!!!
		var name = document.getElementById("jvName").value;
		var age  = document.getElementById("jvAge").value;
		
		location.href = "/whatIsTheSvletV6/reqsvlet?name=" + name + "&age=" + age;
	}
</script>
</head>
<body>
	<%@ include file="../include/menu.jsp" %>
	<hr>
	<h2>form - get :Method=GET, action=/wahtIsTheSvletV6/reqsvlet</h2>
	<form name="myFrm" method="get" action="/whatIsTheSvletV6/reqsvlet" onsubmit="return mySubmit(this);">
		name: <input type="text" name="name" placeholder="name"><br>
		age : <input type="number" name="age" placeholder="Your age"><br><br> 
		<input type="submit"> <input type="reset">
	</form>
	
	<hr>
	<h2>form - post :Method=POST, action=/wahtIsTheSvletV6/reqsvlet</h2>
	<form name="myFrm2" method="get" action="/whatIsTheSvletV6/reqsvlet" onsubmit="return mySubmit(this);">
		name: <input type="text" name="name" placeholder="name"><br>
		age : <input type="number" name="age" placeholder="Your age"><br><br> 
		<input type="submit" value="PUSH ME"> <input type="reset" value="CLEAR ME">
	</form>
	
	<hr>
	<h2>Java Script : location.href="/whatIsTheSvletV6/reqsvlet"</h2>
	<div>
		name : <input type="text" id="jvName"><br><br>
		age  : <input type="text" id="jvAge"><br><br>
		<button onclick="callJScript()"> Call </button>
	</div>
	
	<hr>
	<h2> Ajax </h2>
		
</body>
</html>