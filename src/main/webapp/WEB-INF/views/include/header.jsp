<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/table.css">
</head>
<body>
	<table class="t-type03" width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr height="50">
			<td width="64%">&nbsp;</td>
			<td width="6%"><a href="${pageContext.request.contextPath }/">처음으로</a>&nbsp;&nbsp;</td>
			
			<td width="6%">
				<% 
					String sessionId = (String)session.getAttribute("id");
				
					if(sessionId == null) {
						
						%>	
						&nbsp;<a href="login">로그인</a>
						<%
						
					}else {
						%>
						
						<a href="logout">로그아웃</a>
						<%
					}
				%>
			</td>
			<td width="6%">
				<% 

					if(sessionId == null) {
						
						%>	
						<a href="join">회원가입</a>
						<%
						
					}else {
						%>
						
						<a href="infoModify">정보수정</a>
						<%
					}
				%>

			</td>
			<td width="6%">&nbsp;<a href="profile">프로필</a>&nbsp;</td>
			<td width="6%"><a href="question">문의하기</a></td>
			<td width="6%"><a href="contact">연락하기</a></td>		
		</tr>	
		<tr>
			<td height="50" colspan="7" bgcolor="#ffffff">&nbsp;</td>
		</tr>
	</table>
</body>
</html>