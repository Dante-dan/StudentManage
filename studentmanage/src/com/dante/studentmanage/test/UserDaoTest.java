package com.dante.studentmanage.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.dante.studentmanage.dao.UserDao;
import com.dante.studentmanage.entity.User;

/**
 * @author: Dante
 * @version: 2017年3月3日下午3:36:18
 *
 **/
public class UserDaoTest {

	@Test
	public void test() {
		UserDao userDao = new UserDao();
		User user = new User();
		user.setUsername("dante");
		user.setPassword("root1234");
		System.out.println(userDao.validate(user));
	}

}
