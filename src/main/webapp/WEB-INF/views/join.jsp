<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>## LeeHaeRi Profile ##</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/span.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/table.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/members.js"></script>
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
						<table border="0" cellpadding="0" cellspacing="20">
							<form action="joinOk" method="post" name="reg_frm">
								<tr>
									<td class="td-type01">아이디</td>
									<td align="center"><input type="text" name="id" id="input01"></td>
								</tr>
								<tr>
									<td class="td-type01">비밀번호</td>
									<td align="center"><input type="password" name="pw" id="input01"></td>
								</tr>
								<tr>
									<td class="td-type01">비밀번호 확인</td>
									<td align="center"><input type="password" name="pw_check" id="input01"></td>
								</tr>
								<tr>
									<td class="td-type01">이름</td>
									<td align="center"><input type="text" name="name" id="input01"></td>
								</tr>
								<tr>
									<td class="td-type01">이메일</td>
									<td align="center"><input type="email" name="email" id="input01"></td>
								</tr>
								<tr>
									<td colspan="2" align="center">
										<input id="button01" type="button" value="회원가입" onclick="infoConfirm()">&nbsp;&nbsp;&nbsp;&nbsp;
										<input id="button01" type="button" value="로그인" onclick="javascript:window.location='login'">
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