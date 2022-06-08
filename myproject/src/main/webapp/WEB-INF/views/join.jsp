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
									<td class="td-type01">아이디</td>
									<td><input id="input01" type="text" name="id"></td>
								</tr>
								<tr>
									<td class="td-type01">비밀번호</td>
									<td><input id="input01" type="password" name="pw"></td>
								</tr>
								<tr>
									<td class="td-type01">비밀번호 확인</td>
									<td><input id="input01" type="password" name="pw_check"></td>
								</tr>
								<tr>
									<td class="td-type01">이름</td>
									<td><input id="input01" type="text" name="name"></td>
								</tr>
								<tr>
									<td class="td-type01">생년월일</td>
									<td><input id="input01" type="text" name="birth" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" placeholder="YYYYDDMM 형식"></td>
									
								</tr>
								<tr>	
									<td class="td-type01">성별</td>
									<td style="padding:0; height:0;">
								
									<select id = "gender" name = "gender" style="width:93%; height:80%; margin:10px; font-family:Arial; font-size : 20px;" >
									<option value = "성별" selected>성별</option>
									<option value = "남성">남성</option>
									<option value = "여성">여성</option>
									</select>
									</td>	
								</tr>
									
								<tr>
									<td class="td-type01">전화번호</td>
									<td><input id="input01" type="text" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" name="phone" placeholder="- 없이 숫자만 입력"></td>
								</tr>
								<tr>
									<td class="td-type01">학과</td>
								
								<td style="padding:0; height:0;">
								
								<select id = "depart" name = "depart" style="width:93%; height:80%; margin:10px; font-family:Arial; font-size : 20px;" >
								<option value = "학과" selected>학과</option>
								<option value = "국어국문학과">국어·국문학과</option>
								<option value = "문예창작과">문예창작과</option>
								<option value = "심리학과">심리학과</option>
								<option value = "자율전공학부">자율전공학부</option>
								<option value = "중국어문학과">중국어문학과</option>
								<option value = "철학윤리학">철학윤리학</option>
								<option value = "경찰행정학과">경찰행정학과</option>
								<option value = "법학과">법학과</option>
								<option value = "사회복지학과">사회복지학과</option>
								<option value = "경영학과">경영학과</option>
								<option value = "교육학과">교육학과</option>
								<option value = "건축학과">건축학과</option>
								<option value = "기계공학과">기계공학과</option>
								<option value = "산업공학과">산업공학과</option>
								<option value = "정보통신공학과">정보통신공학과</option>
								<option value = "수학과">수학과</option>
								<option value = "의약과">의약과</option>
								<option value = "간호학과">간호학과</option>
								
								</select>
								</td>	
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