package com.dante.studentmanage.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.dante.studentmanage.entity.User;
import com.dante.studentmanage.util.DBUtil;

/**
 * @author: Dante
 * @version: 2017年3月3日下午3:19:24
 *
 **/

public class UserDao {

	private Connection connection;
	private PreparedStatement pr;

	/**
	 * 验证用户权限
	 * 
	 * @param user
	 * @return
	 */
	public boolean validate(User user) {
		String sql = "select * from user where username=? and password=?";
		connection = DBUtil.makeConnection();
		try {
			pr = connection.prepareStatement(sql);
			pr.setString(1, user.getUsername());
			pr.setString(2, user.getPassword());
			ResultSet resultSet = pr.executeQuery();
			if (resultSet.next()) {
				return true;
			} else {
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pr.close();
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return false;
	}
}
