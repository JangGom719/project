<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 점수</title>


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
					<td height="50" bgcolor="#FFFFFF">&nbsp;</td>
				</tr>
				
		<tr>
			<table width="70%" cellspacing="0" cellpadding="10">
				<tr>					
					<td height="auto"  bgcolor="#D9E5FF" align="center">
					
						<table width="100%" border="0" cellspacing="0" cellpadding="10">		
											
							<form>
							
							<tr>

							<td class="td-type03">강좌명</td>
							<td class="td-type03">점수</td>
							<td class="td-type03">학점</td>
							<td class="td-type03">담당교수</td>
							
							</tr>	
							
							
							<c:forEach var="score" items="${score }" >
							
									
							<tr align="center" class="colored">
							
								<td class="td-type04">${score.classname }</td>
								<td class="td-type04">${score.score }</td>
								<td class="td-type04">${score.grade }</td>		
								<td class="td-type04">${score.professor }</td>
					
							</tr>
							
							
							
							</c:forEach>					
	
		
						</form>						
						</table>
					</td>
				</tr>	
				
				<tr>
					<td height="150" bgcolor="#FFFFFF">&nbsp;</td>
				</tr>
						
			</table>
		</tr>	
	</table>
	<center>
		

	<%@ include file="include/footer.jsp" %>
	
</body>
</html>