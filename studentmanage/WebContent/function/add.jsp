<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生信息录入</title>
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
	<form role="form" action="../function/addstudent.jsp" method="post">
		<div class="form-group">
			<label for="nickname">昵称</label> <input type="text"
				class="form-control" name="nickname" placeholder="请输入昵称">
		</div>
		<div class="form-group">
			<label for="realname">真实姓名</label> <input type="text"
				class="form-control" name="realname" placeholder="请输入真实姓名">
		</div>
		<!--性别单选框  -->
		<label>性别</label>
		<div class="checkbox-inline">
			<label> <input type="radio" name="gender" value="man" checked>男
			</label>
		</div>
		<div class="checkbox-inline">
			<label> <input type="radio" name="gender" value="woman">女
			</label>
		</div>
		<div class="form-group">
			<label for="realname">出生日期</label> <input type="date"
				class="form-control" name="birthday"
				placeholder="输入固定格式，例如：2016-10-10">
		</div>
		<!-- ================专业下拉选择框=============== -->
		<div>
			<label>专业</label> <select class="form-control input-lg" name="major">
				<option>web前端</option>
				<option>javaweb</option>
				<option>PHP</option>
				<option>Linux</option>
			</select>
		</div>
		<!-- ================课程多选下拉框=============== -->
		<div>
			<label>所选课程</label> <select multiple class="form-control" size="5"
				name="course">
				<option>HTML</option>
				<option>CSS</option>
				<option>javascript</option>
				<option>PHP基础</option>
				<option>java基础</option>
			</select>
		</div>
		<!-- ================兴趣复选框=============== -->
		<div>
			<label>兴趣</label> <label class="checkbox-inline"> <input
				type="checkbox" name="interest" value="看电影">看电影
			</label> <label class="checkbox-inline"> <input type="checkbox"
				value="读书" name="interest">读书
			</label> <label class="checkbox-inline"> <input type="checkbox"
				value="听音乐" name="interest">听音乐
			</label>
			<div>
				<label>备注</label>
				<textarea class="form-control" name="remark" rows="3"></textarea>
			</div>
			<div>
				<button type="submit" class="btn btn-default">添加</button>
			</div>
		</div>
	</form>
</body>
</html>