<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html language="ko">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
	<%@ include file="./include/menu.jsp"%>
	<hr>

	<h2>서블릿개요</h2>
	<ol>
		<li>Basic Architecture - Web Application</li>
		<li>What's the Servlet?</li>
		<li>Lifecycle of Servlet</li>
		<li>Servlet Mapping</li>
		<li>Web.xml, Annotation</li>
	</ol>

	<h2>서블릿기초</h2>
	<ol>
		<li>요청과 응답(Request/Response)</li>
		<li>JNDI</li>
		<li>DAO</li>
		<li>DTO(VO)</li>
	</ol>

	<h2>JNDI설정</h2>
	<h3>servlet.xml</h3>
	&lt;GlobalNamingResources &gt; <br>
		&lt;Resource  <br>
		name="jdbc/test"  <br>
		auth="Container"  <br>
		driverClassName="oracle.jdbc.driver.OracleDriver" <br>
		url="jdbc:oracle:thin:@localhost:1521:xe" <br>
		username="student"  <br>
		password="1234" <br>
		type="javax.sql.DataSource" <br> 
		initialSize="20"  <br>
		maxIdle="100"  <br>
		maxTotal="100"  <br>
		maxWaitMillis="30000" <br>
		minIdle="20"  <br>
		/&gt;  <br>
	&lt;/GlobalNamingResources &gt; <br>
	
	<h3>context.xml</h3>
	&lt;ResourceLink global="jdbc/test" name="jdbc/test" type="javax.sql.DataSource"/&gt;
	
	<h2>Tomcat 한글문제</h2>
	<h3>Server.xml</h3>
	&lt;Connector URIEncoding="UTF-8" port="8009" protocol="AJP/1.3" redirectPort="8443"/&gt;	
</body>
</html>