<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table>
<thead>
<tr><th>번호</th>
<th>제목</th>
<th>작성자</th>
<th>작성일</th>
<th>조회수</th></tr>
</thead>
<tbody>
<c:forEach items="${list}" var="board">
<tr>
	<td>${board.bno}</td>
	<td><a href="read?bno=${board.bno}">${board.title}</a></td>
	<td>${board.writer}</td>
	<td><fmt:formatDate value="${board.regdate}"/></td>
	<td>${board.readcount}</td>
</tr>
</c:forEach>

</tbody>

</table>


</body>
</html>