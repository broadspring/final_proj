<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<br>
<br>
<br>
<br>
<br>
<br>
<body>

	<h1>내정보 보기!</h1>

	ID : ${sessionScope.loginAccount.ac_id }
	<br> PW : ${sessionScope.loginAccount.ac_pw }
	<br> NickName : ${sessionScope.loginAccount.ac_nick }
	<br> NAME: ${sessionScope.loginAccount.ac_name }
	<br> ADDR: ${sessionScope.loginAccount.ac_addr }
	<br> EMAIL: ${sessionScope.loginAccount.ac_email }
	<br> 가입날짜: <fmt:formatDate value="${sessionScope.loginAccount.ac_date }" pattern="MM/dd/yy" />
	<br>
	<button onclick="location.href='index.go'">home 으로 돌아가기</button>
	<div>
		<button onclick="location.href='account.modify.go'">내정보 수정하기</button>
	</div>

</body>
</html>