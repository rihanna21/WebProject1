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
�����Դϴ�.^^
${signedUser}�� �ݰ����ϴ�.
<a href="logout.jsp">�α׾ƿ�</a>
</body>
</html>