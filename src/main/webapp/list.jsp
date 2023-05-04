<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

List<Map<String,String>> list = new ArrayList<>();

for(int i=1;i<=10;i++){
	Map<String,String> board = new HashMap<>();
	board.put("bi_num","" + i);
	board.put("bi_title","게시글" + i);
	board.put("bi_writer","글쓴이" + i);
	list.add(board);
}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1" cellspacing="0" cellpadding="0">
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>글쓴이</th>
	</tr>
	<%
	for(Map<String,String> map : list){
		out.println("<tr>");
		out.println("<td>" + map.get("bi_num") + "</td>"); 
		out.println("<td>" + map.get("bi_title") + "</td>");
		out.println("<td>" + map.get("bi_writer") + "</td>");
		out.println("</tr>");
	}
	%>
</table>
</body>
</html>