<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 수업</title>


<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/span.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/table.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/board.js"></script>


</head>
<body>

	<%@ include file="include/header.jsp" %>
	
	
<ul>

  <li><a class="home" href="Phome">홈</a></li>
  <li><a href="Pinfo">내 정보</a></li>
  <li><a href="lesson">나의 수업</a></li>

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
						
						<table width="100%" border="0" cellspacing="0" cellpadding="20" id ="userList">		
											
							<form action="setstudent"  method="post" name="reg_frm">
			
			
								 <tr><td colspan="9" class="td-type05"><h3 align="left">나의수업목록</h3></td></tr>
								
							
							<tr>

							
							<td class="td-type03">학년</td>
							<td class="td-type03">계열</td>
							<td class="td-type03">분류</td>
							<td class="td-type03">강좌명</td>
							<td class="td-type03">학점</td>							
							<td class="td-type03">수강인원</td>
							
							<td class="td-type03">학생</td>
							
							<td class="hidden">코드</td>
							<!-- 넘겨야 하는 값 -->
							
							
							</tr>	
							
							
							<c:forEach items="${lesson}" var="dto">
							<tr align="center" class="colored">
							
								
								<td class="td-type04">${dto.num} </td>
								<td class="td-type04">${dto.classline }</td>
								<td class="td-type04">${dto.classification }</td>
								<td class="td-type04">${dto.classname }</td>	
								<td class="td-type04">${dto.score }</td>
								<td class="td-type04">${dto.appnum }</td>
								
								
								<td class="td-type04"><input type="button" value="보기" onclick="javascript:window.location='lessoninfo?code=${dto.code }'"></td>
								
								<td id = "code" class="hidden">${dto.code }</td>
								<!-- 넘겨야 하는 값 -->
								
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