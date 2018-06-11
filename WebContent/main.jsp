<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
	if(session.getAttribute("signedUser") == null){
		response.sendRedirect("logout.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
메인입니다.^^
${signedUser}님 반갑습니다.
<a href="logout.jsp">로그아웃</a>
</body>
</html>