<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 정보</title>


<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/span.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/table.css">

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
					<td height="500"  bgcolor="#D9E5FF" align="center">
					
						<table border="0" cellspacing="0" cellpadding="20">		
											
							<form action="infoOk"  method="post" name="reg_frm">
								<td align="right" colspan="4"><input type="submit" value="저장" id="button01"></td>
								<tr>
									<td class="td-type01">이름(한문)</td>
									<td><input id="input01" type="text" name="china" 
									value="<%if(session.getAttribute("china")!=null) {out.println(session.getAttribute("china")); } 
									else {out.println("");} %>"></td>
		
									<td class="td-type01">이름(영문)</td>
									<td><input id="input01" type="text" name="english"
									value="<%if(session.getAttribute("english")!=null) {out.println(session.getAttribute("english")); } 
									else {out.println("");} %>"></td>
								</tr>
								
								<tr>
									<td class="td-type01">집 전화번호</td>
									<td><input id="input01" type="text" name="home"
									value="<%if(session.getAttribute("home")!=null) {out.println(session.getAttribute("home")); } 
									else {out.println("");} %>"></td>

									<td class="td-type01">E-MAIL</td>
									<td><input id="input01" type="text" name="email"
									value="<%if(session.getAttribute("email")!=null) {out.println(session.getAttribute("email")); } 
									else {out.println("");} %>"></td>
								</tr>
								
								
								<tr>
									<td class="td-type01">은행</td>
									<td>
									
									
								<select name = "bank" style="width:260px; padding:6px; font-family:Arial; font-size : 20px;">
								<option value = "국민" >국민</option>
								<option value = "농협" >농협</option>
								<option value = "신한" >신한</option>
								</select></td>

	
								<td class="td-type01">계좌번호</td>
									<td><input id="input01" type="text" name="account"
									value="<%if(session.getAttribute("account")!=null) {out.println(session.getAttribute("account")); } 
									else {out.println("");} %>"></td>
								</tr>
								
								
								<tr>
									<td class="td-type01">예금주</td>
									<td><input id="input01" type="text" name="depositor"
									value="<%if(session.getAttribute("depositor")!=null) {out.println(session.getAttribute("depositor")); } 
									else {out.println("");} %>"></td>


									<td class="td-type01">국가</td>
									<td><input id="input01" type="text" name="nation"
									value="<%if(session.getAttribute("nation")!=null) {out.println(session.getAttribute("nation")); } 
									else {out.println("");} %>"></td>
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