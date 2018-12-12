package com.springbook.biz.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCUtil {
	public static Connection getConnection() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			Class.forName("org.mariadb.jdbc.Driver");

			con = DriverManager.getConnection("jdbc:mariadb://localhost/sample", "root", "1234");
//			pstmt = con.prepareStatement("select * from his_bus_voltage");
//			rs = pstmt.executeQuery();
//			while (rs.next()) {
//				// .
//			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return con;
	}

	public static void close(ResultSet rs, PreparedStatement stmt, Connection conn) {

		try {
			if (rs != null) rs.close();
			if (stmt != null) stmt.close();
			if (conn != null) conn.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
