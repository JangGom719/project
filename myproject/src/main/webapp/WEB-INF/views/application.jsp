<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삭제 된 페이지</title>


<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/span.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/table.css">
</head>
<body>

	<%@ include file="include/header.jsp" %>
	
	
<ul>
  <li><a class="home" href="home">홈</a></li>
  <li><a href="info">내 정보</a></li>
  <li><a href="score">성적 확인</a></li>
  <li><a href="application">수강 신청</a></li>
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
						
						<table border="0" cellspacing="0" cellpadding="20">		
											
							<form action="applicationOk"  method="post" name="reg_frm">

	
							<tr><td colspan="9" class="td-type05"><h3 align="left">수강신청목록</h3></td></tr>
							
							
							<tr>

							<td class="td-type03">신청</td>
							<td class="td-type03">학년</td>
							<td class="td-type03">계열</td>
							<td class="td-type03">과목코드</td>
							<td class="td-type03">강좌명</td>
							<td class="td-type03">학점</td>
							<td class="td-type03">담당교수</td>
							<td class="td-type03">수강인원 </td>
							<td class="td-type03">최대인원</td>
							
							
							</tr>	
							
							
							<c:forEach items="${application}" var="dto">
							<tr align="center" class="colored">
							
								<td class="td-type04"><input type="button" value="신청"></td>
								<td class="td-type04">${dto.num} </td>
								<td class="td-type04">${dto.classline }</td>
								<td class="td-type04">${dto.code }</td>
								<td class="td-type04">${dto.classname }</td>
								<td class="td-type04">${dto.score }</td>
								<td class="td-type04">${dto.professor }</td>
								<td class="td-type04">${dto.appnum }</td>
								<td class="td-type04">${dto.maxnum }</td>
								
							</tr>	
							</c:forEach>	
							</form>	
												
						</table>
					</td>
				</tr>	
				
			
			
			
			<tr>
			<table width="70%" cellspacing="0" cellpadding="10">
				<tr>					
					<td height="auto"  bgcolor="#D9E5FF" align="center">
					
						<table width = "100%" border="0" cellspacing="0" cellpadding="20">		
											
							<form action="applicationCancle"  method="post" name="reg_frm">

	
							
							<tr>

							<td class="td-type03">취소</td>
							<td class="td-type03">학년</td>
							<td class="td-type03">계열</td>
							<td class="td-type03">과목코드</td>
							<td class="td-type03">강좌명</td>
							<td class="td-type03">학점</td>
							<td class="td-type03">담당교수</td>

							
							
							</tr>	
							
							
							<c:forEach items="${selectclass}" var="sc">
							<tr align="center" class="colored">
							
								<td class="td-type04"><input type="button" value="취소"></td>
								<td class="td-type04">${sc.num} </td>
								<td class="td-type04">${sc.classline }</td>
								<td class="td-type04">${sc.code }</td>
								<td class="td-type04">${sc.classname }</td>
								<td class="td-type04">${sc.score }</td>
								<td class="td-type04">${sc.professor}</td>

								
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