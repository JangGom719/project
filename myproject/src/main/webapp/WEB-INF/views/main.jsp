<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
</head>
<body>


	<%@ include file="include/header.jsp" %>
	
	<center>
	<table class="t-type01" width="75%" border="0" cellspacing="0" cellpadding="20">
				<tr>
					<td height="50" bgcolor="#FFFFFF">&nbsp;</td>
				</tr>
		<tr>
			<table class="index" cellspacing="0" cellpadding="10">
				<tr>					
					<td height="500" align="center">
						<table class="opacity2"  border="0" cellspacing="0" cellpadding="10" bgcolor="#FFCCCC">							
							<form>
								
								<tr>
									
									<td colspan="3"><h3> &nbsp;&nbsp;&nbsp; I-CAMPUS LOGIN</h3></td>
								
								</tr>
								
								<tr>
									<td colspan="2">
									<input id="button01" type="button" value="학생" onclick="javascript:window.location='login'">&nbsp;&nbsp;
									<input id="button01" type="button" value="교수" onclick="javascript:window.location='loginP'">
									</td>
									
								</tr>
								
								<tr>
									
									<td colspan="2">
									<a>아직 아이디가 없다면</a> &nbsp; &nbsp; &nbsp; 
									<input id="button01" type="button" value="회원가입" onclick="javascript:window.location='join'">
									</td> 
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