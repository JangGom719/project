<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강 학생</title>


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
			
			
								 <tr><td colspan="9" class="td-type05"><h3 align="left">수강 학생 리스트</h3></td></tr>
								
							
							<tr>

							
							<td class="td-type03">학년</td>
							<td class="td-type03">전공</td>
							<td class="td-type03">이름</td>
							<td class="td-type03">전화번호</td>
							<td class="td-type03">이메일</td>					
							
							
							<td class="td-type03">성적 입력</td>
							<td class="td-type03">성적 수정</td>
							<!-- 버튼  -->
							
							
							<td class="hidden">아이디</td>
							
							<!-- 넘겨야 하는 값 -->
							
							
							</tr>	
							
							
							<c:forEach var="student" items="${student}" varStatus="status" >
							<!-- 						info     -->
							
							<tr align="center" class="colored">
							
								
								<td class="td-type04">${student.year} </td>
								<td class="td-type04">${student2[status.index].depart }</td>
								<td class="td-type04">${student2[status.index].name }</td>
								<td class="td-type04">${student2[status.index].phone }</td>	
								<td class="td-type04">${student.email }</td>
								
								<!-- 한번에 두개 이상의 forEach 문을 돌릴 때는 이렇게 -->
								
								<td class="td-type04"><input type="button" value="입력" onclick="javascript:window.open('setscore?studentid=${student2[status.index].id }','window_name','width=430,height=400,location=no,status=no,scrollbars=yes');"></td>
								<td class="td-type04"><input type="button" value="수정" onclick="javascript:window.open('updatescore?studentid=${student2[status.index].id }','window_name','width=430,height=400,location=no,status=no,scrollbars=yes');"></td>
								
								<td id = "studentid" class="hidden">${student2[status.index].id }</td>
								
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