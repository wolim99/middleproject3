package co.yedam.my.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Control;
import co.yedam.my.Reply;
import co.yedam.my.service.MyService;
import co.yedam.my.service.MyServiceImpl;

public class AddReplyControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		
		String rstar = req.getParameter("revStar");
		String rcontent = req.getParameter("revContent");
		String pno = req.getParameter("prodNo");
		String mno = req.getParameter("memNo");
		String lno = req.getParameter("listNo");
		
		Reply reply = new Reply();
		reply.setRevStar(Integer.parseInt(rstar));
		reply.setRevContent(rcontent);
		reply.setProdNo(Integer.parseInt(pno));
		reply.setMemNo(Integer.parseInt(mno));
		reply.setListNo(Integer.parseInt(lno));
		
		MyService svc = new MyServiceImpl();
		
		if (svc.addReply(reply)) {
			resp.getWriter().print("{\"retCode\": \"OK\"}");
			resp.sendRedirect("orderList.do");
		} else {
			resp.getWriter().print("{\"retCode\": \"NG\"}");
		}

	}

}
