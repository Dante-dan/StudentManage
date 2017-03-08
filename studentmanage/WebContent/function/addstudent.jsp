<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>
	<jsp:useBean id="studentDao"
		class="com.dante.studentmanage.dao.StudentDao"></jsp:useBean>
	<jsp:useBean id="student"
		class="com.dante.studentmanage.entity.Student"></jsp:useBean>
	<jsp:setProperty property="*" name="student" />
	<%
		if (studentDao.addStudnt(student)) {
	%>
	<jsp:forward page="../function/list.jsp"></jsp:forward>
	<%
		} else {
			out.print("fail");
		}
	%>
</body>
</html>