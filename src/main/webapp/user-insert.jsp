<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="/user-insert-ok.jsp" method="POST">
	<input type="text" name="uiId" placeholder="아이디를 입력해주세요."><br>
	<input type="password" name="uiPwd" placeholder="비밀번호를 입력해주세요."><br>
	<input type="text" name="uiName" placeholder="이름을 입력해주세요."><br>
	<button>유저등록</button>
</form>
</body>
</html>