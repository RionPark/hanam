<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <script>
 <%
 String uiId = request.getParameter("uiId");
 String uiName = request.getParameter("uiName");
 String uiPwd = request.getParameter("uiPwd");
 
 Connection con = DBCon.getCon();
 String sql="INSERT INTO USER_INFO(UI_ID, UI_NAME, UI_PWD)";
 sql += " values(?,?,?)";
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setString(1,uiId);
pstmt.setString(2,uiId);
pstmt.setString(3,uiId);
int result = pstmt.executeUpdate();
if(result==1){
 %>
 	alert('유저가 정상적으로 등록되었습니다.');
 	location.href='/users.jsp';
<%
}else{
%>
 	alert('유저가 등록되지 않았습니다.');
 	location.href='/users.jsp';
<%
}
%>
 </script>