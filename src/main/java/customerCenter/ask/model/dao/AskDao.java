package customerCenter.ask.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import customerCenter.ask.model.vo.Ask;

public class AskDao {

	public int insertAsk(Connection conn, Ask ask) {
		PreparedStatement pstmt = null;
		String query = "INSERT INTO ASK_TBL VALUES(SEQ_ASKNO.NEXTVAL, ?, ?, ?, ?, DEFAULT)";
		int result = 0;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, ask.getAskCategory());
			pstmt.setString(2, ask.getAskSubject());
			pstmt.setString(3, ask.getAskContent());
			pstmt.setString(4, ask.getAskWriter());
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

	/* 전체목록 출력
	public List<Ask> selectAskList(Connection conn) {
		PreparedStatement pstmt = null;
		String query = "SELECT * FROM ASK_TBL ORDER BY ASK_NO DESC";
		ResultSet rset = null;
		List<Ask> aList = new ArrayList<Ask>();
		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Ask ask = rsetToAsk(rset);
				aList.add(ask);
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
		return aList;
	} */

	/* 페이징 적용 : 현재 페이지 currentPage부여*/
	// currentPage를 받기위해 service도 수정해줌
	public List<Ask> selectAskList(Connection conn, int currentPage) {
		PreparedStatement pstmt = null;
		String query = "SELECT * FROM (SELECT ROW_NUMBER() OVER(ORDER BY ASK_NO DESC) ROW_NUM, ASK_TBL. * FROM ASK_TBL) WHERE ROW_NUM BETWEEN ? AND ?";
		ResultSet rset = null;
		List<Ask> aList = new ArrayList<Ask>();
		//1. 페이지당 보여줄 개수 설정
		int recordCountPerPage = 5;
		//2. 실행할 쿼리문의 페이지 값을 동적으로 설정 : between start and end 
		// -> 페이징 시작값과 끝 값 설정
		int start = currentPage * recordCountPerPage - (recordCountPerPage - 1);
		int end = currentPage * recordCountPerPage;
		try {
			pstmt = conn.prepareStatement(query);
			//3. 실행할 쿼리문의 값 설정
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Ask ask = rsetToAsk(rset);
				aList.add(ask);
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
		return aList;
	}
	
	//4. 페이징넘버 생성하는 메소드 : currentPage 필요함<-service에서 보내줌
	//필요변수 (1)전체게시물개수 (2)한페이지당 보여줄 게시물개수 (3)네비게이터개수
	public String generatePageNavi(int currentPage) {
		// 6. 생성할 네비게이터 수를 먼저 계산하기위해 전체게시물 수, 보여줄게시물 수 변수선언
		int totalCount = 22; //전체게시물수 : 현재 DB상 개수 22->추후 동적으로 계산할 예정
		int recordCountPerPage = 5; // 보여줄 게시물 수->직접지정
		int naviTotalCount = 0; //네비게이터 수 구하는 계산식 전에 변수 먼저 선언함 
		// 7. 네비게이터 수 계산식= 전체게시물수 / 보여줄게시물 수
		if(totalCount % recordCountPerPage > 0) { //전체게시물수 / 보여줄게시물 수 = 나머지가 있으면
			naviTotalCount = totalCount / recordCountPerPage + 1; //네비게이터 수+1
		} else {
			naviTotalCount = totalCount / recordCountPerPage; //나머지가 0이므로 네비게이터 수가 딱 떨어짐
		}
		// 8. 범위가 넘어갈 때 네비게이터의 시작값과 마지막값 동적처리
		// 필요변수 (1)한 페이지 범위에 보여질 네비게이터 개수 naviCountPerPage
		int naviCountPerPage = 5;
		// 9. 한 범위 당 시작될 네비게이터 값과 마지막값 동적처리
		int startNavi = ((currentPage - 1) / naviCountPerPage) * naviCountPerPage + 1;
		int endNavi = startNavi + naviCountPerPage - 1;
		// 10. endNavi값이 총 범위의 개수보다 커지는 것을 막아주는 코드
		if(endNavi > naviTotalCount) { //마지막 네비게이터가 전체네비게이터 수보다 많아지면
			endNavi = naviTotalCount; //동일한 값이 되도록 강제함
		}
		// 11. boolean형으로 다음 버튼, 이전 버튼이 필요한지 판단하는 코드 : true를 기본값으로 함
		boolean needPrev = true;
		boolean needNext = true;
		if(startNavi == 1) { //네비게이터값이 1이면 이전버튼 필요없음
			needPrev = false;
		}
		if(endNavi == naviTotalCount) { //네비게이터값이 전체수(최대값)이 되면 다음버튼 필요없음
			needNext = false;
		}
		// 12. 누적을 하게 해주는 api 객체 생성
		StringBuilder result = new StringBuilder();
		// 13. 이전 버튼이 필요하면(true) -> 이전버튼 추가
		if(needPrev) {
			result.append("<a href='/ask/list.do?currentPage="+(startNavi-1)+"'>[이전]</a> ");
		}
		// 14. for문으로 페이지 네비게이터 번호 생성
		for(int i = 1; i < naviTotalCount; i++) {
			result.append("<a href='/ask/list.do?currentPage="+i+"'>"+i+"</a>");
		}
		// 15. 다음 버튼이 필요하면 -> 다음버튼 추가
		if(needNext) { 
			result.append("<a href='/ask/list.do?currentPage="+(endNavi+1)+"'>[다음]</a>");
		}
		// 16. generatePageNavi메소드 반환타입을 String 변경해줌
		return result.toString(); 
	}	
	
	
	private Ask rsetToAsk(ResultSet rset) throws SQLException {
		Ask ask = new Ask();
		ask.setAskNo(rset.getInt("ASK_NO"));
		ask.setAskCategory(rset.getString("ASK_CATEGORY"));
		ask.setAskSubject(rset.getString("ASK_SUBJECT"));
		ask.setAskContent(rset.getString("ASK_CONTENT"));
		ask.setAskWriter(rset.getString("ASK_WRITER"));
		ask.setAskDate(rset.getDate("ASK_DATE"));
		return ask;
	}

}
