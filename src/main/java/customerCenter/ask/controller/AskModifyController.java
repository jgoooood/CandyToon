package customerCenter.ask.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customerCenter.ask.model.service.AskService;
import customerCenter.ask.model.vo.Ask;

/**
 * Servlet implementation class AskModifyController
 */
@WebServlet("/ask/modify.do")
public class AskModifyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AskModifyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AskService service = new AskService();
		int askNo = Integer.parseInt(request.getParameter("askNo")); 
		Ask ask = service.selectOneByNo(askNo);
		request.setAttribute("ask", ask);
		request.getRequestDispatcher("/WEB-INF/views/customerCenter/askModify.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
