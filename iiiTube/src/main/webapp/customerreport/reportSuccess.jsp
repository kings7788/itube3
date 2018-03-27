<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>線上回報單填寫</title>
</head>
<body>
	
	<h2>回報單提交成功!</h2>
	<h5>問題編號:${insertok.memberQuesNum}</h5>
	<h5>帳號:${insertok.memId}</h5>
	<h5>姓名:${insertok.memName}</h5>
	<h5>項目:${insertok.memTopic}</h5>
	<h5>主旨:${insertok.memTitle}</h5>
	<h5>問題敘述:${insertok.memAsk}</h5>
	<h5>問題時間:${insertok.memQuesTime}</h5>
	
	<br><br>
	<a href="<c:url value='../MemberCenter.jsp'/> ">回會員中心</a>
	
</body>
</html>