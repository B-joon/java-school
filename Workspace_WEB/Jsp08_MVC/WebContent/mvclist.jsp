<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script type="text/javascript">
		function allCheck(bool) {
			var chks = document.getElementsByName("chk");
			for (var i = 0; i < chks.length; i++) {
				chks[i].checked = bool;
			}
		}
		$(function () {
			$("#muldelform").submit(function() {
				if($("#muldelform input:checked").length == 0) {
					alert("하나이상 선택해 주세요");
					
					return false;
				}
			});
		});
	</script>
</head>
<body>

	<h1>list</h1>
		<form action="mvc.do" method="post" id="muldelform">
			<input type="hidden" name="command" value="muldel">
			<table border="1">
			<col width="25">
			<col width="50">
			<col width="100">
			<col width="500">
			<col width="100">
			<tr>
				<th><input type="checkbox" name="all" onclick="allCheck(this.checked);"></th>
				<th>번호</th>
				<th>작성자</th>
				<th>제목</th>
				<th>작성일</th>
			</tr>
			<c:choose>
				<c:when test="${empty list }">
					<tr>
						<td colspan="4" align="center">---------작성된 글이 존재하지 않습니다.-----------</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach items="${list }" var="dto">
						<tr>
							<td><input type="checkbox" name="chk" value="${dto.seq }"></td>
							<td>${dto.seq }</td>
							<td>${dto.writer }</td>
							<td><a href="mvc.do?command=select&seq=${dto.seq }">${dto.title }</a></td>
							<td>${dto.regDate }</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
			<tr>
				<td colspan="5" align="right">
					<input type="submit" value="선택삭제">
					<input type="button" value="글작성" onclick="location.href='mvc.do?command=insert'">
				</td>
			</tr>
		</table>	
	</form>
</body>
</html>