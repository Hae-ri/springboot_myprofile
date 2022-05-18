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
							
								<%
									int checkID = Integer.parseInt(request.getAttribute("checkIdFlag").toString());
									int checkPW = Integer.parseInt(request.getAttribute("checkPwFlag").toString());
								
									if(checkID != 1) {
								%>
									<srcipt language="JavaScript">
										alert("입력하신 아이디는 존재하지 않는 아이디입니다. 아이디를 다시 확인해주세요.");
										history.go(-1);									
									</srcipt>								
								<% 
									}else if(checkPW == 0) {
								%>
									<srcipt language="JavaScript">
										alert("입력하신 비밀번호가 틀렸습니다. 다시 확인해주세요.");
										history.go(-1);									
									</srcipt>	
								
								<% 
									}else {
										session.setAttribute("ValidMem", "yes");
									}
								%>
								
								<tr>
									<td class="td-type02">
										<b>${mname }</b> 님 안녕하세요. <br>
										아이디 <b>${mid }</b> 로 로그인에 성공하셨습니다.									
									</td>
								</tr>
					
						</table>
					
					</td>
				</tr>
			</table>
		</tr>
	</table>

	<%@ include file="include/footer.jsp" %>
</body>
</html>