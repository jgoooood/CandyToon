package candyToon.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import candyToon.model.service.CandyToonService;
import candyToon.model.vo.CandyToon;

/**
 * Servlet implementation class RegisterController
 */
@WebServlet("/member/Register.do")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String userId = request.getParameter("user-Id");
		String userPw = request.getParameter("user-Pw");
		String userEmail = request.getParameter("user-Email");
		String userName = request.getParameter("user-Name");
		// 폼태그에서 입력받은 데이터를 객체로 저장함
		CandyToon cUser = new CandyToon(userId, userPw, userEmail, userName);
		// service 호출하기 위해 객체 생성
		CandyToonService service = new CandyToonService();
		// 저장한 데이터를 service로 넘김->db에 저장할 쿼리문 생각->반환받을 결과를 담을 변수데이터 정하기
		//쿼리문 : INSERT INTO USER_TBL VALUES(?, ?, ?, ?); -> int형 변수로 받기
		int result = service.insertUser(cUser);
		if(result > 0) {
			request.getRequestDispatcher("/member/login.html").forward(request, response);
		} else {
			request.getRequestDispatcher("/index.html").forward(request, response);
		}
	}

}
