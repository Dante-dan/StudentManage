<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>验证</title>
</head>
<body>
	<jsp:useBean id="user" class="com.dante.studentmanage.entity.User" />
	<jsp:useBean id="userDao" class="com.dante.studentmanage.dao.UserDao" />
	<jsp:setProperty property="*" name="user" />
	<%
		session.setAttribute("error", " ");
		if (userDao.validate(user)) {
			session.setAttribute("user", user);
			RequestDispatcher rd = request.getRequestDispatcher("../login/main.jsp");
			rd.forward(request, response);
	%>
	<jsp:forward page="../login/main.jsp"></jsp:forward>
	<%
		} else {
			session.setAttribute("error", "用户名或密码错误！");
	%>
	<jsp:forward page="../login/login.jsp"></jsp:forward>
	<%
		}
	%>
</body>
</html>