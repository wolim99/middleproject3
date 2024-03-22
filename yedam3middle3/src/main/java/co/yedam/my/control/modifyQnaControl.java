package co.yedam.my.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Control;
import co.yedam.my.Qna;
import co.yedam.my.service.MyService;
import co.yedam.my.service.MyServiceImpl;

public class modifyQnaControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String inqNo = req.getParameter("inqNo");
		String title = req.getParameter("inqTitle");
		String content = req.getParameter("inqContent");
		
		Qna qna = new Qna();
		qna.setInqNo(Integer.parseInt(inqNo));
		qna.setInqTitle(title);
		qna.setInqContent(content);
		
		MyService svc = new MyServiceImpl();
		
		if(svc.modifyQna(qna)) {
			resp.sendRedirect("qnaMain.do");
		} else {
			System.out.println("오류");
		}
	}

}
