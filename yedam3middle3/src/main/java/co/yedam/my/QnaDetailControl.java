package co.yedam.my;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Control;


public class QnaDetailControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String inqNo = req.getParameter("inqNo");
		
		MyService svc = new MyServiceImpl();
		Qna qna = svc.getQna(Integer.parseInt(inqNo)); //mapper 기능 처리
		
		req.setAttribute("qna", qna);
		
		String path = "dak/qnaDetail.tiles";
		req.getRequestDispatcher(path).forward(req, resp); //페이지 재지정하면서 요청정보
	}

}
