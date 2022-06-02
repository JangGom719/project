<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>


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
						<table class="opacity" border="0" cellspacing="0" cellpadding="10" bgcolor="#D9E5FF">							
							<form action="loginOk"  method="post" name="reg_frm">
								
								
								<tr>
									
									<td colspan="3"><h3> &nbsp;&nbsp;&nbsp; 비밀번호 찾기</h3></td>
								
								</tr>
								
							<%
							
							int searchPw = Integer.parseInt(request.getAttribute("searchPw").toString());
							
							if(searchPw == 0 ){
							
							%>
							
							<script language = "JavaScript">
								alert("일치하는 회원정보가 존재하지 않습니다");
								history.go(-1);
							</script>
		
							
							<% } else { 
							
								session.setAttribute("validmember","yes");
							}
							
							%>
					
							<tr>
							
								<td class="td-type02"> 
								${name } 님의 비밀번호  <br>
								${pw }
								</td>
															
							</tr>
								
								<tr>
									<td colspan="3">
									
									<input id="button03" type="button" value="로그인" onclick="javascript:window.location='login'">
									
									</td>
								</tr>
									
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