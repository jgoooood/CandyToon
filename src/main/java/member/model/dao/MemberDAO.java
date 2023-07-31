package member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import member.model.vo.Member;

public class MemberDAO {

	public int insertMember(Connection conn, Member member) {
		PreparedStatement pstmt = null;
		String query = "INSERT INTO MEMBER_TBL VALUES(?, ?, ?, ?, SYSDATE)";
		int result = 0;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, member.getMemberId());
			pstmt.setString(2, member.getMemberPw());
			pstmt.setString(3, member.getMemberEmail());
			pstmt.setString(4, member.getMemberName());
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

	public Member loginCheck(Connection conn, Member member) {
		PreparedStatement pstmt = null;
		String query = "SELECT * FROM MEMBER_TBL WHERE MEMBER_ID = ? AND MEMBER_PW = ?";
		ResultSet rset = null;
		Member mOne = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, member.getMemberId());
			pstmt.setString(2, member.getMemberPw());
			rset = pstmt.executeQuery();
			while(rset.next()) {
				mOne = rsetToMember(rset);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rset.close();
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
				
		return mOne;
	}

	private Member rsetToMember(ResultSet rset) throws SQLException {
		Member member = new Member();
		member.setMemberId(rset.getString("MEMBER_ID"));
		member.setMemberPw(rset.getString("MEMBER_PW"));
		member.setMemberEmail(rset.getString("MEMBER_EMAIL"));
		member.setMemberName(rset.getString("MEMBER_NAME"));
		member.setRegiDate(rset.getDate("REGI_DATE"));
		return member;
	}

	public Member selectOneById(Connection conn, String memberId) {
		PreparedStatement pstmt = null;
		String query = "SELECT * FROM MEMBER_TBL WHERE MEMBER_ID = ?";
		ResultSet rset = null;
		Member mOne = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, memberId);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				mOne = rsetToMember(rset);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rset.close();
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return mOne;
	}

}
