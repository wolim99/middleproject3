package co.yedam.my.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Control;
import co.yedam.my.service.MyService;
import co.yedam.my.service.MyServiceImpl;

public class removeQnaControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String inqno = req.getParameter("inqNo");
		
		MyService svc = new MyServiceImpl();
		
		if (svc.removeQna(Integer.parseInt(inqno))) {
			resp.sendRedirect("qnaMain.do");
		} else {
			System.out.println("오류");
		}
	}

}
