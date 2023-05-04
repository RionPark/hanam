<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String str = "1";
out.println(str);
%>
<%=str%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
안녕하쇼~
<table border="1">
	<tr>
	<%for(int i=1;i<=9;i++){%>
		<th><%=i%>단</th>
	<%}%>
	</tr>
	<%
		for(int i=1;i<=9;i++){
			out.println("<tr>");
			for(int j=1;j<=9;j++){
				out.println("<td>" + j + " X " + i + " = " + (j*i) + "</td>");
			}
			out.println("</tr>");
		}
	%>
</table>
</body>
</html>