<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
D
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>註冊成功!</title>
</head>
<body>

<h2>註冊成功!</h2>

帳號:${memberBean.account}
姓名:${memberBean.name}
<br><br>
<a href="<c:url value='../MemberCenter.jsp' /> ">回會員中心</a>

</body>
</html>