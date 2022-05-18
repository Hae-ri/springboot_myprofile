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
									if(checkID == 1) {
								%>
									<srcipt language="JavaScript">
										alert("입력하신 아이디는 이미 사용 중입니다. 다른 아이디를 입력하세요.");
										history.go(-1);									
									</srcipt>								
								<% 
									} 
								%>
								
								<tr>
									<td class="td-type02">
										<b>${mname }</b> 님 회원 가입을 축하드립니다! <br>
										가입하신 아이디는 <b>${mid }</b> 입니다.									
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