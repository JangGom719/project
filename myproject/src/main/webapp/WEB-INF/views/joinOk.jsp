<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 성공</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/members.js"></script>
</head>
<body>



							<%
							
							int checkId = Integer.parseInt(request.getAttribute("checkId").toString());
							int checkId2 = Integer.parseInt(request.getAttribute("checkId2").toString());
							
							
							if(checkId ==1 || checkId2==1){
							
							%>
							
							<script language = "JavaScript">
								alert("이미 있는 아이디 입니다");
								history.go(-1);
							</script>
							
							<% }  else  {%>
							
							<script language = "JavaScript">
								alert("회원가입을 축하합니다");
							</script>
							
							<% } response.sendRedirect("home"); %>
							
</body>
</html>