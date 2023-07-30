package candyToon.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import candyToon.model.vo.CandyToon;

public class CandyToonDAO {

	public int insertUser(Connection conn, CandyToon cUser) {
		PreparedStatement pstmt = null;
		String query = "INSERT INTO USER_TBL VALUES(?, ?, ?, ?, SYSDATE)";
		int result = 0;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, cUser.getUserId());
			pstmt.setString(2, cUser.getUserPw());
			pstmt.setString(3, cUser.getUserEmail());
			pstmt.setString(4, cUser.getUserName());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

}
