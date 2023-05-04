package com.web.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBCon {

	public static Connection getCon() {
		Connection con = null; //커넥션 준비
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		
			String url = "jdbc:mysql://localhost/nothing"; //전화번호
			String id = "root"; // 아이디
			String pwd ="1234"; //비밀번호
			con = DriverManager.getConnection(url, id, pwd);
		} catch (Exception e) {
			e.printStackTrace();
		} //유심장착

		return con;
	}
}
