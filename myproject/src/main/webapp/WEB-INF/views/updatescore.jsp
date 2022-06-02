<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성적 수정</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/span.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/table.css">

</head>
<body>

							<%
							
							int check = Integer.parseInt(request.getAttribute("check").toString());

							if(check == 0 ){
							
							%>
							
							<script language = "JavaScript">
								alert("입력 된 성적이 없습니다");
								window.close();
							</script>
							
							<% } %>


<center>
	<table class="t-type01" width="75%" border="0" cellspacing="0" cellpadding="20">
		<tr>
			<table width="70%" border="0" cellspacing="0" cellpadding="10">
				<tr>					
					<td height="auto" bgcolor="#D9E5FF" align="center">
						<table border="0" cellspacing="0" cellpadding="10">	
												
							<form action="updatescoreOk" method="post" name="reg_frm">
					
								<tr>
									<td class="td-type06">강좌명</td>
									<td><input id="input01" type="text" name="classname" value="${dto.classname }" readonly></td>
								</tr>
		
								<tr>
									<td class="td-type06">점수</td>
									<td><input id="input01" type="text" name="score" value="${dto.score }"></td>
								</tr>
								<tr>
									<td class="td-type06">학점</td>
									<td><input id="input01" type="text" name="grade" value="${dto.grade }"></td>
								</tr>
								<tr>
									<td class="td-type06">년도</td>
									<td><input id="input01" type="text" name="year" value="${dto.year }" readonly></td>
								</tr>
								<tr>
									<td class="td-type06">학기</td>
									<td><input id="input01" type="text" name="semester" value="${dto.semester }" readonly></td>
								</tr>
								
								
								<tr>	
									<td class="hidden">코드</td>
									<td><input id="input01" type="hidden" name="code" value="${dto.code }"></td>
								</tr>

								<tr>
									<td class="hidden">아이디</td>
									<td><input id="input01" type="hidden" name="studentid" value="<%{out.print(request.getParameter("studentid"));}%>"></td>
								</tr>
								
								
								<tr>
									<td colspan="3" rowspan="3">
									<input id="button03" type="submit" value="수정">&nbsp;&nbsp;&nbsp;
								</td>
									
								</tr>
								</tr>
								
							</form>						
						</table>
					</td>
				</tr>	
	

</body>
</html>