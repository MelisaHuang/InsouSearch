﻿package dao;

import java.sql.*;

public class ConnectionManager {	
	//链接参数
	private static final String DRIVER_CLASS = "org.gjt.mm.mysql.Driver";

	private static final String DATABASE_URL = "jdbc:mysql://localhost/insou";

	private static final String DATABASE_USRE = "root";

	private static final String DATABASE_PASSWORD = "2770317149";
	
	/**
	 * 创建数据库连接
	 * @return
	 */
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName(DRIVER_CLASS).newInstance();
			conn = DriverManager.getConnection(DATABASE_URL,
					DATABASE_USRE, DATABASE_PASSWORD);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	/**
	 * 关闭数据库的连接、语句以及结果集等资源
	 * @param conn
	 * @param stmt
	 * @param rset
	 */

	public static void closeConnection(Connection conn,Statement stmt, ResultSet rset) {
		try{
			if(rset != null)
				rset.close();
			if(stmt != null)
				stmt.close();
			if(conn != null)
				conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	
	/**
	 * 检查是否存在满足SQL语句的记录，在创建新用户时用于检查用户名是否已存在
	 * @param SqlString
	 * @return
	 */

	public static boolean hasRecord(String SqlString) {
		boolean result = false;
		Connection conn = null;
    	Statement stmt = null;
    	ResultSet rset = null;
    	try {
    		conn = getConnection();
			stmt = conn.createStatement();			
		    rset = stmt.executeQuery(SqlString);
		    while(rset.next()){
		    	result = true;
		    }
		} catch (SQLException e) {
			e.printStackTrace();			
		} finally{
			closeConnection(conn,stmt,rset);
		}
		return result;
	}
	
	/**
	 * 查执行询语句，返回结果集
	 * @param SqlString
	 * @return
	 */
	public static ResultSet query(String SqlString) {
		Connection conn = null;
    	Statement stmt = null;
    	ResultSet rset = null;
    	try {
    		conn = getConnection();
			stmt = conn.createStatement();			
		    rset = stmt.executeQuery(SqlString);		    
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();			
		} finally{
			closeConnection(conn,stmt,rset);
		}
		return rset;
	}
	
	/**
	 * 更新数据库记录
	 * @param sql
	 * @return
	 */
	public static boolean update(String sql) {
		boolean result = false;
		Connection conn = null;
		Statement stmt = null;
		ResultSet rset = null;
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			stmt.executeUpdate(sql);
			result = true;
		} catch (Exception e1) {
			e1.printStackTrace();
		} finally {
			closeConnection(conn,stmt,rset);
		}
		return result;
	}
	
	/**
	 * 删除数据库记录
	 * @param sql
	 * @return
	 */
	public static boolean delete(String sql) {
		boolean result = false;
		Connection conn = null;
		Statement stmt = null;
		ResultSet rset = null;
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			stmt.execute(sql);
			result = true;
		} catch (Exception e1) {
			e1.printStackTrace();
		} finally {
			closeConnection(conn,stmt,rset);
		}
		return result;
	}

}
