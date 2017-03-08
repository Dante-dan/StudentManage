package com.dante.studentmanage.test;

import java.util.List;

import org.junit.Test;

import com.dante.studentmanage.dao.StudentDao;
import com.dante.studentmanage.entity.Student;

/**
 * @author: Dante
 * @version: 2017年3月7日下午12:35:29
 *
 **/
public class StudentDaoTest {
	/*
	 * @Test public void test() { StudentDao studentDao = new StudentDao();
	 * List<Student> sList = studentDao.getAll(); for (Student student : sList)
	 * { System.out.println(student.getMajor()); } }
	 * 
	 * @Test public void test2() { StudentDao studentDao = new StudentDao();
	 * Student student = studentDao.getByID(3);
	 * System.out.println(student.toString());
	 * 
	 * }
	 */
	@Test
	public void test3() {
		StudentDao studentDao = new StudentDao();
		Student student = studentDao.getByID(3);
		student.setId(3);
		student.setBirthday("1997-11-11");
		if (studentDao.changeStudnt(student)) {
			System.out.println(student.getBirthday());
		}

	}
}
