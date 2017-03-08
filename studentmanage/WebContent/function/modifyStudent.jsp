<%@page import="com.dante.studentmanage.entity.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="//cdn.bootcss.com/bootstrap/3.0.1/css/bootstrap.css"
	rel="stylesheet">
<style type="text/css">
body {
	padding-top: 10px;
	padding-bottom: 40px;
	padding-left: 80px;
	padding-right: 80px;
}

form {
	width: 80%;
	padding-top: 10px;
	padding-bottom: 40px;
	padding-left: 80px;
	padding-right: 80px;
}
</style>
</head>
<body>
	<%
		Student student = (Student) session.getAttribute("student");
		out.print(student.toString());
	%>
	<form role="form" action="../function/change.jsp" method="post">
		<div class="form-group">
			<label for="nickname">昵称</label> <input type="text"
				value="<%=student.getNickname()%>" class="form-control"
				name="nickname" placeholder="请输入昵称">
		</div>
		<div class="form-group">
			<label for="realname">真实姓名</label> <input type="text"
				value="<%=student.getRealname()%>" class="form-control"
				name="realname" placeholder="请输入真实姓名">
		</div>
		<!--==============性别单选框 ==================== -->
		<label>性别</label>
		<div class="checkbox-inline">
			<label> <input type="radio" name="gender" value="man"
				<%if (student.getGender().equals("man")) {%> checked <%}%>>男
			</label>
		</div>
		<div class="checkbox-inline">
			<label> <input type="radio" name="gender" value="woman"
				<%if (student.getGender().equals("woman")) {%> checked <%}%>>女
			</label>
		</div>
		<div class="form-group">
			<label for="realname">出生日期</label> <input type="date"
				value="<%=student.getBirthday()%>" class="form-control"
				name="birthday" placeholder="输入固定格式，例如：2016-10-10">
		</div>
		<!-- ================专业下拉选择框=============== -->
		<div>
			<label>专业</label> <select class="form-control input-lg" name="major">
				<option <%if (student.getMajor().equals("web前端")) {%> selected <%}%>>web前端</option>
				<option <%if (student.getMajor().equals("javaweb")) {%> selected
					<%}%>>javaweb</option>
				<option <%if (student.getMajor().equals("PHP")) {%> selected <%}%>>PHP</option>
				<option <%if (student.getMajor().equals("Linux")) {%> selected <%}%>>Linux</option>
			</select>
		</div>
		<!-- ================课程多选下拉框=============== -->
		<div>
			<label>所选课程</label> <select multiple class="form-control" size="5"
				name="course">
				<option <%if (student.getCourses().contains("HTML")) {%> selected
					<%}%>>HTML</option>
				<option <%if (student.getCourses().contains("CSS")) {%> selected
					<%}%>>CSS</option>
				<option <%if (student.getCourses().contains("javascript")) {%>
					selected <%}%>>javascript</option>
				<option <%if (student.getCourses().contains("PHP")) {%> selected
					<%}%>>PHP基础</option>
				<option <%if (student.getCourses().contains("java基础")) {%> selected
					<%}%>>Java基础</option>
			</select>
		</div>
		<!-- ================兴趣复选框=============== -->
		<div>
			<label>兴趣</label> <label class="checkbox-inline"> <input
				type="checkbox" name="interest" value="看电影"
				<%if (student.getInterests().contains("看电影")) {%> checked <%}%>>看电影
			</label> <label class="checkbox-inline"> <input type="checkbox"
				value="读书" name="interest"
				<%if (student.getInterests().contains("读书")) {%> checked <%}%>>读书
			</label> <label class="checkbox-inline"> <input type="checkbox"
				value="听音乐" name="interest"
				<%if (student.getInterests().contains("听音乐")) {%> checked <%}%>>听音乐
			</label>
			<div>
				<label>备注</label>
				<textarea class="form-control" name="remark" rows="3"><%=student.getRemark()%></textarea>
			</div>
			<div>
				<input type="hidden" name="id" value="<%=student.getId()%>">
				<button type="submit" class="btn btn-default">提交</button>
			</div>
		</div>
	</form>
</body>
</html>