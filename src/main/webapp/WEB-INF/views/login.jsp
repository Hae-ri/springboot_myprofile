<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>## LeeHaeRi Profile ##</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/span.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/table.css">
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<center>
	<table class="t-type01" width="75%" border="0" cellpadding="20" cellspacing="0">
		<tr>
			<td><span class="title01">개발자 이해리의 홈페이지</span></td>
		</tr>
		<tr>
			<td><span class="title02">저는 개발직을 원하는 개발자 이해리입니다. 연락주세요!</span></td>
		</tr>
		<tr>
		
			<!-- 중간 -->
			<table width="70%" border="0" cellpadding="10" cellspacing="0">
				<tr>
					<td height="500" bgcolor="#D5D5D5" align="center">
						<table border="0" cellpadding="10" cellspacing="0">
							<form action="loginOk" method="post">
								<tr>
									<td class="td-type01">아 이 디</td>
									<td align="center"><input type="text" name="id" id="input01"></td>
								</tr>
								<tr>
									<td class="td-type01">비밀번호</td>
									<td align="center"><input type="password" name="pw" id="input01"></td>
								</tr>
								<tr>
									<td colspan="2" align="center">
										<input id="button01" type="submit" value="로그인">&nbsp;&nbsp;&nbsp;&nbsp;
										<input id="button01" type="button" value="회원가입" onclick="javascript:window.location='join'">
									</td>
								</tr>		
							</form>						
						</table>
					
					</td>
				</tr>
			</table>
		</tr>
	</table>

	<%@ include file="include/footer.jsp" %>
</body>
</html>