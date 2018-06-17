<%
session.invalidate(); // 기존 세션 데이터 삭제
response.sendRedirect("sign.jsp"); // 로그인 페이지로 이동
%>