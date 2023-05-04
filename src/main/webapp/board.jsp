
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Connection con = DBCon.getCon();
Statement stmt = con.createStatement();

ResultSet rs = stmt.executeQuery("SELECT BI_NUM, BI_TITLE, BI_CONTENT, BI_WRITER, BI_CNT, BI_DATE FROM BOARD_INFO");
%>

<table border="1">
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>조회수</th>
	</tr>
<%
while(rs.next()){
	int biNum = rs.getInt("BI_NUM");
	String biTitle = rs.getString("BI_TITLE");
	String biWriter = rs.getString("BI_WRITER");
	int biCnt = rs.getInt("BI_CNT");
	out.println("<tr>");
	out.println("<td>" +  biNum + "</td>");
	out.println("<td>" +  biTitle + "</td>");
	out.println("<td>" +  biWriter + "</td>");
	out.println("<td>" +  biCnt + "</td>");
	out.println("</tr>");
}
%>
</table>
</body>
</html>