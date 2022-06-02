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
	
	
	
	<center>
	<table class="t-type01" width="75%" border="0" cellspacing="0" cellpadding="20">
				<tr>
					<td height="50" bgcolor="#FFFFFF">&nbsp;</td>
				</tr>
		<tr>
			<table class="bg" cellspacing="0" cellpadding="10">
				<tr>					
					<td height="500" align="center">
					

						<table class="opacity" border="0"  bgcolor="#D9E5FF" cellspacing="0" cellpadding="0">							
							<form action="loginOk"  method="post" name="reg_frm">
							
								<tr>							
									<td colspan="10" bgcolor="#003399" padding="10"><img src="<c:url value="/resources/img/logo.png" />"><td>
								</tr>					
								
								<tr>
									
									<td colspan="3"><h3> &nbsp;&nbsp;&nbsp; I-CAMPUS LOGIN</h3></td>
								
								</tr>
								
								<tr>
									
									<td class="td-type01"> &nbsp;&nbsp;&nbsp; 아이디</td>
									<td><input id="input01" type="text" name="id" tabindex="1"></td>
								
									<td rowspan="2" colspan="2"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input id="button02" type="submit" value="로그인" tabindex="3">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</td>
								
								</tr>
								
								<tr>
									<td class="td-type01"> &nbsp;&nbsp;&nbsp; 패스워드&nbsp;&nbsp;&nbsp;</td>
									<td><input id="input01" type="password" name="pw" tabindex="2"></td>
								</tr>
								
								
								<tr>
									<td>&nbsp;</td>
								</tr>

									
								<tr>

									<td colspan="3">
									
									<input id="button03" type="button" value="아이디 찾기" onclick="javascript:window.location='searchId'">
									<input id="button03" type="button" value="비밀번호 찾기" onclick="javascript:window.location='searchPw'">
									
									</td>
								</tr>
									
								
								<tr>
									<td>&nbsp;</td>
								</tr>
								
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