<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <script>
 <%
 String uiNum = request.getParameter("uiNum");
 String uiId = request.getParameter("uiId");
 String uiName = request.getParameter("uiName");
 String uiPwd = request.getParameter("uiPwd");
 
 Connection con = DBCon.getCon();
 String sql="UPDATE USER_INFO SET UI_ID=?, UI_NAME=?, UI_PWD=? WHERE UI_NUM=?";
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setString(1,uiId);
pstmt.setString(2,uiName);
pstmt.setString(3,uiPwd);
pstmt.setString(4,uiNum);
int result = pstmt.executeUpdate();
if(result==1){
 %>
 	alert('유저가 정상적으로 수정되었습니다.');
 	location.href='/users.jsp';
<%
}else{
%>
 	alert('유저가 수정되지 않았습니다.');
 	location.href='/users.jsp';
<%
}
%>
 </script>