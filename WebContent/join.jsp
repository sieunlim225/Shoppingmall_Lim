<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="join_check.mvc" method="post">
	아이디:<input type="text" name="id" size="10"><br>
	비밀번호:<input type="text" name="pw" size="10"><br>
	이름:<input type="text" name="name" size="10"><br>
	성별구분:<input type="radio" name="gender" value="man">남 &nbsp; <input type="radio" name="gender" value="woman">여<br>
	전화번호:<input type="text" name="phone" size="15"><br>
	우편번호:<input type="text" name="addnum" size="8"><br>
	주소:<input type="text" name="address1" size="25"><br>
	상세주소:<input type="text" name="address2" size="25"><br>
	이메일:<input type="text" name="email" size="30"><br>
	<input type="submit" value="회원가입"> <input type="reset" value="취소">
</form>
</body>
</html>