<%@page import="com.dante.studentmanage.entity.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="studentDao"
		class="com.dante.studentmanage.dao.StudentDao"></jsp:useBean>
	<%
		int id = Integer.parseInt(request.getParameter("id"));
		if (studentDao.deleteStudent(id)) {
			//	session.setAttribute("student", student);
	%>
	<jsp:forward page="../function/list.jsp"></jsp:forward>
	<%
		} else {
	%>
	<jsp:forward page="../function/error.jsp"></jsp:forward>
	<%
		}
	%>
</body>
</html>