<%@page import="com.myboard.dao.MyBoardDao"%>
<%@page import="com.myboard.dto.MyBoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String writer = request.getParameter("writer");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	MyBoardDto dto = new MyBoardDto();
	dto.setWriter(writer);
	dto.setTitle(title);
	dto.setContent(content);
	
	MyBoardDao dao = new MyBoardDao();
	
	int res = dao.update(dto);
	if(res > 0) {
%>
	<script	type="text/javascript">
		alert("수정 성공");
		location.href="./mylist.jsp"
	</script>
<%
	} else {
%>
	<script type="text/javascript">
		alert("수정 실패");
		location.href="./myupdate.jsp?seq=<%=dto.getSeq() %>"
	</script>
<%
	}
%>
</body>
</html>