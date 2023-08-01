package customerCenter.ask.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import customerCenter.ask.model.vo.Ask;

public class AskDao {

	public int insertAsk(Connection conn, Ask ask) {
		PreparedStatement pstmt = null;
		String query = "INSERT INTO ASK_TBL VALUES(?, ?, ?, ?, SYSDATE)";
		int result = 0;
		try {
			pstmt = conn.prepareStatement(query);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return 0;
	}

}
