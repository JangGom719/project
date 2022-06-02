<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/members.js"></script>

</head>
<body>


	<%@ include file="include/header.jsp" %>
	
	<center>
	<table class="t-type01" width="75%" border="0" cellspacing="0" cellpadding="20">
				<tr>
					<td height="50" bgcolor="#FFFFFF">&nbsp;</td>
				</tr>
		<tr>
			<table width="70%" border="0" cellspacing="0" cellpadding="10">
				<tr>					
					<td height="500" bgcolor="#D9E5FF" align="center">
						<table border="0" cellspacing="0" cellpadding="10">							
							<form action="joinOk" method="post" name="reg_frm">
								<tr>
									<td class="td-type01">MEMBER ID</td>
									<td><input id="input01" type="text" name="id"></td>
								</tr>
								<tr>
									<td class="td-type01">PASSWORD</td>
									<td><input id="input01" type="password" name="pw"></td>
								</tr>
								<tr>
									<td class="td-type01">PW CHECK</td>
									<td><input id="input01" type="password" name="pw_check"></td>
								</tr>
								<tr>
									<td class="td-type01">NAME</td>
									<td><input id="input01" type="text" name="name"></td>
								</tr>
								<tr>
									<td class="td-type01">BIRTH</td>
									<td><input id="input01" type="text" name="birth"></td>
								</tr>
								<tr>	
									<td class="td-type01">GENDER</td>
									<td><input id="input01" type="text" name="gender"></td>
								</tr>
								<tr>
									<td class="td-type01">PHONE</td>
									<td><input id="input01" type="text" name="phone"></td>
								</tr>
								<tr>
									<td class="td-type01">DEPART</td>
									<td><input id="input01" type="text" name="depart"></td>
								</tr>

								<tr>
									<td colspan="2">
									<input id="button01" type="button" value="회원가입" onclick="infoConfirm()">&nbsp;&nbsp;
									<input id="button01" type="button" value="로그인" onclick="javascript:window.location='login'">
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