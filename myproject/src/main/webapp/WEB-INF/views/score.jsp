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
											
							<form action="scoreOk"  method="post" name="reg_frm">
							
							<tr>

							<td class="td-type03">년도</td>
							<td class="td-type03">학기</td>
							<td class="td-type03">신청학점</td>
							<td class="td-type03">취득학점</td>
							<td class="td-type03">총점수</td>
							<td class="td-type03">총평점</td>
							<td class="td-type03">평균점수</td>
							<td class="td-type03">평균평점</td>
							<td class="td-type03">자세히</td>
							
							</tr>	
							
							
							<c:forEach var="score" items="${score }" varStatus="status" >
							
									
							<tr align="center" class="colored">
							<!-- ${score2[status.index].getscore } -->
								<td class="td-type04">${score.year }</td>
								<td class="td-type04">${score.semester }</td>
								<td class="td-type04">${score.appscore }</td>		
								<td class="td-type04">
						
								
								
								<c:choose>
  								  <c:when test="${score2[status.index].getscore eq null}">
									<c:out value="0"/>
   								  </c:when>
   								  <c:otherwise>
									<c:out value="${score2[status.index].getscore }"/>
   								  </c:otherwise>
								</c:choose>
								
								<!-- 만약 취득학점이 null 값일 경우 0을 출력 -->
								
								</td>
								
								
								<td class="td-type04">${score.sumscore }</td>
								<td class="td-type04">${score.sumgrade }</td>
								<td class="td-type04">${score.avgscore }</td>
								<td class="td-type04">${score.avggrade }</td>
								<td class="td-type04"><input type="button" value="보기" onclick="javascript:window.location='scoreinfo?year=${score.year }&semester=${score.semester }'"></td>
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