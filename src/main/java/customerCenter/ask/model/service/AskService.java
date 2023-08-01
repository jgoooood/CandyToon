package customerCenter.ask.model.service;

import java.sql.Connection;

import common.JDBCTemplate;
import customerCenter.ask.model.dao.AskDao;
import customerCenter.ask.model.vo.Ask;

public class AskService {
	JDBCTemplate jdbcTemplate;
	AskDao aDao;
	public AskService() {
		jdbcTemplate = JDBCTemplate.getInstance();
		aDao = new AskDao();
	}
	
	public int insertAsk(Ask ask) {
		Connection conn = jdbcTemplate.createConnection();
		int result = aDao.insertAsk(conn, ask);
		jdbcTemplate.close(conn);
		return result;
	}

}
