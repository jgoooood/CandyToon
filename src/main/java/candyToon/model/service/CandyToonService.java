package candyToon.model.service;

import java.sql.Connection;

import candyToon.model.dao.CandyToonDAO;
import candyToon.model.vo.CandyToon;
import common.JDBCTemplate;

public class CandyToonService {
	JDBCTemplate jdbcTemplate;
	CandyToonDAO cDao;
	
	public CandyToonService() {
		cDao = new CandyToonDAO();
		jdbcTemplate = JDBCTemplate.getInstance();
	}
	
	public int insertUser(CandyToon cUser) {
		//연결생성 메소드 호출
		Connection conn = jdbcTemplate.createConnection();
		// DAO에 연결생성값과 user정보 전달
		int result = cDao.insertUser(conn, cUser);
		if (result > 0) {
			jdbcTemplate.commit(conn); //인서트 성공하면 커밋메소드 호출
		} else {
			jdbcTemplate.rollback(conn); // 인서트 실패하면 롤백메소드 호출
		}
		//연결닫아주기
		jdbcTemplate.close(conn);
		return result;
	}

}
