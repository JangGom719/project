<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/table.css">

</head>
<body>
	<table class="t-type02-header" width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr height="80">
			
			<td align="left"><a href="/index"><img src="<c:url value="/resources/img/logo_big.png" />"></a></td>
			
			
				<% String sessionId = (String) session.getAttribute("id");
				
						if(sessionId !=null){
			
				%>	
				<td align="right" class="td-type02"><a><%{out.println(session.getAttribute("name"));}%></a></td>
				
				<% String degree = (String) session.getAttribute("degree");
				
					if(degree !=null){
				
				%>
				
				<td align="right" width="12%" class="td-type02"><a>교수님 환영합니다</a></td>
				
				<% } else { %>
				
				
				<td align="right" width="9%" class="td-type02"><a>님 환영합니다</a></td>
				
				<%   } %>
				
				<td align="right" width="7%" class="td-type02"><a href="logout">LOGOUT</a></td>
	
				<% } %>
			
			<td align="right" width ="3%">&nbsp;</td>
			
		</tr>
		<!-- <tr>
			<td height="50" colspan="7" bgcolor="#FFFFFF">&nbsp;</td>
		</tr> -->
	</table>
</body>
</html>