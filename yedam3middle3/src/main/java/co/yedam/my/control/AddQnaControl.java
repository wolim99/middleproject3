package co.yedam.my.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Control;
import co.yedam.my.Qna;
import co.yedam.my.service.MyService;
import co.yedam.my.service.MyServiceImpl;

public class AddQnaControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		
		String title = req.getParameter("inqTitle");
		String content = req.getParameter("inqContent");
		String type = req.getParameter("inqType");
		String mno = req.getParameter("memNo");
		
		Qna qna = new Qna();
		qna.setInqTitle(title);
		qna.setInqContent(content);
		qna.setInqType(type);
		qna.setMemNo(Integer.parseInt(mno));
		
		MyService svc = new MyServiceImpl();
		if (svc.addQna(qna)) {
			resp.getWriter().print("{\"retCode\": \"OK\"}");
			resp.sendRedirect("qnaMain.do");
		} else {
			resp.getWriter().print("{\"retCode\": \"NG\"}");
		}
	}

}
