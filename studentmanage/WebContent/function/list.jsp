<%@page import="java.util.Iterator"%>
<%@page import="com.dante.studentmanage.entity.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="//cdn.bootcss.com/bootstrap/3.0.1/css/bootstrap.css"
	rel="stylesheet">
<script type="text/javascript">
	function confirmDel() {
		if (confirm("确定删除")) {
			return true;
		} else {
			return false;
		}
	}
</script>
</head>
<body>
	<!--<jsp:include page="../login/islogin.jsp"></jsp:include> -->

	<jsp:useBean id="studentDao"
		class="com.dante.studentmanage.dao.StudentDao"></jsp:useBean>
	<div class="table-responsive">
		<table class="table">
			<caption>学生信息管理</caption>
			<thead>
				<tr>
					<th>编号</th>
					<th>昵称</th>
					<th>姓名</th>
					<th>性别</th>
					<th>出生日期</th>
					<th>专业</th>
					<th>课程</th>
					<th>兴趣</th>
					<th>备注</th>
					<th>修改</th>
					<th>删除</th>
				</tr>
			</thead>
			<tbody>
				<%
					List<Student> slList = studentDao.getAll();
					Iterator iterator = slList.iterator();
					int i = 0;
					while (iterator.hasNext()) {
						Student student = (Student) iterator.next();
				%>
				<tr>
					<td><%=student.getId()%></td>
					<td><%=student.getNickname()%></td>
					<td><%=student.getRealname()%></td>
					<td><%=student.getGender()%></td>
					<td><%=student.getBirthday()%></td>
					<td><%=student.getMajor()%></td>
					<td><%=student.getCourses()%></td>
					<td><%=student.getInterests()%></td>
					<td><%=student.getRemark()%></td>
					<td><a href="../function/modify.jsp?id=<%=student.getId()%>">修改</a></td>
					<td><a href="../function/delete.jsp?id=<%=student.getId()%>"
						onclick="return confirmDel()">删除</a></td>
				</tr>
				<%
					i++;
					}
				%>
			</tbody>
		</table>
	</div>

</body>
</html>