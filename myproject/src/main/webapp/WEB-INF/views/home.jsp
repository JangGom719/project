<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>


<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/span.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/table.css">
</head>
<body>

	<%@ include file="include/header.jsp" %>
	
	
<ul>
  <li><a class="home" href="home">홈</a></li>
  <li><a href="info">내 정보</a></li>
  <li><a href="score">성적 확인</a></li>
  <li><a href="array">수강 신청</a></li>
</ul>


	<center>
	<table class="t-type01" width="75%" border="0" cellspacing="0" cellpadding="20">

					<tr>
					<td>&nbsp;</td>
					</tr>
					
				<table class="notice01" width="100%" height="500">
				

				
				</table>
				
				
					
				<tr>
					<td height="150" bgcolor="#FFFFFF">&nbsp;</td>
				</tr>	
				
		
		</tr>	
	</table>
	<center>
		

	<%@ include file="include/footer.jsp" %>
	
</body>
</html>