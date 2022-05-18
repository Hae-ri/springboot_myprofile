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
			<table width="70%" border="0" cellpadding="10" cellspacing="0">
				<tr>
					<td bgcolor="#D5D5D5">
						<span class="s-text01">J</span><span class="s-text02">AVA</span>
					</td>
					<td height="500" bgcolor="#D5D5D5" rowspan="6" align="center">
						<!-- <img alt="♪" src="${pageContext.request.contextPath }/resources/img/back.jpg">  -->
						<img src="<c:url value="/resources/img/back2.jpg" />">
					</td>
				</tr>
				<tr>
					<td bgcolor="#D5D5D5">
						<span class="s-text01">J</span><span class="s-text02">SP</span>
					</td>
				</tr>
				<tr>
					<td bgcolor="#D5D5D5">
						<span class="s-text01">S</span><span class="s-text02">PRING</span>
					</td>
				</tr>
				<tr>
					<td bgcolor="#D5D5D5">
						<span class="s-text01">J</span><span class="s-text02">AVASCRIPT</span>
					</td>
				</tr>
				<tr>
					<td bgcolor="#D5D5D5">
						<span class="s-text01">H</span><span class="s-text02">TML5</span>
					</td>
				</tr>
				<tr>
					<td bgcolor="#D5D5D5">
						<span class="s-text01">D</span><span class="s-text02">ATABASE</span>
					</td>
				</tr>
			</table>
		</tr>
	</table>

	<%@ include file="include/footer.jsp" %>
</body>
</html>