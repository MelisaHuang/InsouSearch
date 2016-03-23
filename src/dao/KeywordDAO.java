package dao;
import java.sql.*;
import java.util.HashMap;

import entity.Keyword;



import entity.Keyword;

public class KeywordDAO {
	
	// 得到所有关键词的列表
		private HashMap<String, Keyword> KeywordList;
		public HashMap getKeywordList() {
			HashMap keywordList = new HashMap();
			Connection conn = null;
			Statement stmt = null;
			ResultSet rset = null;
			Keyword keyword = null;
			try {
				conn = ConnectionManager.getConnection();
				String sql = "select * from keyword";
				stmt = conn.createStatement();
				rset = stmt.executeQuery(sql);
				while (rset.next()) {
					keyword = new Keyword(
							rset.getString("k_name"),
							rset.getInt("k_id"), 
							rset.getInt("k_passOrNot"),
							rset.getInt("k_searchRange"),
							rset.getString("k_localPath"),
							rset.getString("k_noPassReason"),
							rset.getString("k_remark")										
							);
					
					keywordList.put(rset.getString("k_name"),keyword);
				}

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();

			} finally {
				try {
					rset.close();
					stmt.close();
					conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			return keywordList;
		}
	//验证关键词是否是不合法关键词,result返回1为合法，2为非法，3为出现异常
	public int verifyKeyword(String kwcname) {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rset = null;
		int result = 0;
		
		try {
			conn = ConnectionManager.getConnection();
			String sql = "select * from keyword where k_name =('" + kwcname + "')";
			System.out.println("select * from keyword where k_name =('" + kwcname + "')" );
			stmt = conn.prepareStatement(sql);
			rset = stmt.executeQuery();
			if (rset.next() && rset.getInt("k_passOrNot") == 1) {
				result = 1;
				System.out.println("关键词合法！");
			}
			else
			{
				result=2;
				System.out.println("关键词不合法！");
			}
			
		} 
		catch (SQLException e) {
			System.out.println("SQLException inside verify keyword");
			e.printStackTrace();
			result = 3;
		} finally {
			try {
				rset.close();
				stmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}	
	
	
}
