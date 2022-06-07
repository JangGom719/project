<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강 신청</title>


<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/span.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/table.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/board.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/application.js"></script>
<script src="https://code.jquery.com/jquery-1.9.1.js"></script>


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
						
						<table width ="100%" border="1" cellspacing="0" cellpadding="20">		
											
							<form action="arrayOk"  method="post" name="reg_frm">


								<tr>
				
								<td class="td-type03"> 계열 </td>
								<td class="td-type03"> 학년 </td>
								<td class="td-type03"> 분류 </td>
								<td  style="padding:0; height:0;" rowspan="2" colspan="2"><input type="submit" value="조회" style="height:100px; width:100%;"></td>
										
								</tr>
								
								<tr>
								
								
								<td style="padding:0; height:0;">
								<select id ="classline" name = "classline" style="width:100%; height:100%; font-family:Arial; font-size : 20px;">
								<option value = "교육계열" 	 <c:if test="${classline=='교육계열'}"> selected </c:if>>교육계열</option>
								<option value = "인문계열" 	 <c:if test="${classline=='인문계열'}"> selected </c:if>>인문계열</option>
								<option value = "사회계열" 	 <c:if test="${classline=='사회계열'}"> selected </c:if>>사회계열</option>
								<option value = "자연계열" 	 <c:if test="${classline=='자연계열'}"> selected </c:if>>자연계열</option>
								<option value = "공학계열" 	 <c:if test="${classline=='공학계열'}"> selected </c:if>>공학계열</option>
								<option value = "예체능계열" 	<c:if test="${classline=='예체능계열'}"> selected </c:if>>예체능계열</option>
								<option value = "의약계열" 	 <c:if test="${classline=='의약계열'}"> selected </c:if>>의약계열</option>
								<option value = "이색계열"	 	 <c:if test="${classline=='이색계열'}"> selected </c:if>>이색계열</option>
								</select>
								</td>	

								
								<td style="padding:0; height:0;">
								<select id = "num" name = "num" style="width:100%; height:100%; padding:6px; font-family:Arial; font-size : 20px;" >
								<option value = "1" 	 <c:if test="${num=='1'}"> selected </c:if>>1</option>
								<option value = "2"		 <c:if test="${num=='2'}"> selected </c:if>>2</option>
								<option value = "3"  	 <c:if test="${num=='3'}"> selected </c:if>>3</option>
								<option value = "4"      <c:if test="${num=='4'}"> selected </c:if>>4</option>
								</select>
								</td>	
								
								<td style="padding:0; height:0;">
								<select id="classification" name = "classification" style="width:100%; height:100%; padding:6px; font-family:Arial; font-size : 20px;">
								<option value = "교양" 	 <c:if test="${classification=='교양'}"> selected </c:if>>교양</option>
								<option value = "전공" 	 <c:if test="${classification=='전공'}"> selected </c:if>>전공</option>
								</select>
								</td>									
								
								

							</form>	
												
						</table>
					</td>
				</tr>	
				
			
			
			<table width="70%" cellspacing="0" cellpadding="10">
				<tr>					
					<td height="auto"  bgcolor="#D9E5FF" align="center">
						
						<table width="100%" border="0" cellspacing="0" cellpadding="20" id ="userList">		
											
							<form action="applicationOk"  method="post" name="app">
			
			
								 <tr><td colspan="9" class="td-type05"><h3 align="left">수강신청목록</h3></td></tr>
								
							
							<tr>

							<td class="td-type03">신청</td>
							<td class="td-type03">학년</td>
							<td class="td-type03">계열</td>
							<td class="td-type03">분류</td>
							<td class="td-type03">강좌명</td>
							<td class="td-type03">학점</td>
							<td class="td-type03">담당교수</td>
							<td class="td-type03">수강인원 </td>
							<td class="td-type03">최대인원</td>
							
							<td class="hidden">코드</td>
							<!-- 넘겨야 하는 값 -->
							
							
							</tr>	
							
							
							<c:forEach items="${application}" var="dto">
							<tr align="center" class="colored">
							
								<td class="td-type04"><input type="button" value="신청" onclick="if((${dto.score }+${sum })>21) alert('학점은 21학점을 넘을 수 없습니다'); else javascript:window.location='applicationOk?code=${dto.code }'"></td>
					
								<td class="td-type04">${dto.num} </td>
								<td class="td-type04">${dto.classline }</td>
								<td class="td-type04">${dto.classification }</td>
								<td class="td-type04">${dto.classname }</td>
								<td class="td-type04">${dto.score }</td>
								<td class="td-type04">${dto.professor }</td>
								<td class="td-type04">${dto.appnum }</td>
								<td class="td-type04">${dto.maxnum }</td>
								
								
								<td id = "code" class="hidden">${dto.code }</td>
								<!-- 넘겨야 하는 값 -->
								
								
								<td id = "sum" class="hidden">${sum }</td>
								
								
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
							 
							 <td colspan="7" class="td-type05"><h3><span style="display: inline-block; width:77%; text-align: left;">나의수강목록</span><span style="display: inline-block; text-align: right;">최대학점 : 21</span>
							 
							 <span style="display: inline-block; text-align: right;" >신청 학점 : <%if(request.getAttribute("sum")!=null) { out.print(Integer.parseInt(request.getAttribute("sum").toString())); }
							 else {out.print("0");}%></span>
							 </h3></td>
							 
							 </tr>
							
							<tr>

							<td class="td-type03">취소</td>
							<td class="td-type03">학년</td>
							<td class="td-type03">계열</td>
							<td class="td-type03">분류</td>
							<td class="td-type03">강좌명</td>
							<td class="td-type03">학점</td>
							<td class="td-type03">담당교수</td>

							<td class="hidden">코드</td>
							
							</tr>	
							
							
							<c:forEach items="${selectclass}" var="sc">
							<tr align="center" class="colored">
							
								<td class="td-type04"><input type="button" value="취소" onclick="javascript:window.location='applicationCancle?code=${sc.code }'"></td>
								<td class="td-type04">${sc.num} </td>
								<td class="td-type04">${sc.classline }</td>
								<td class="td-type04">${sc.classification }</td>
								<td class="td-type04">${sc.classname }</td>
								<td class="td-type04">${sc.score }</td>
								<td class="td-type04">${sc.professor}</td>
								
								<td id = "code" class="hidden">${sc.code }</td>

								
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
	
<% session.removeAttribute("classline"); %>
<% session.removeAttribute("num");	%>
<% session.removeAttribute("classification"); %>

<!-- 선택 없이 array 페이지로 다시 이동했을 때 session을 지우기 위해 -->

</body>
</html>