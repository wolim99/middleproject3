package co.yedam.order.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Control;
import co.yedam.member.Member;
import co.yedam.order.service.OrderService;
import co.yedam.order.service.OrderServiceImpl;

public class UpdateAddrControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String memName = req.getParameter("memName");
		String memAddr = req.getParameter("memAddr");
		
		Member member = new Member();
		member.setMemAddr(memAddr);
		member.setMemName(memName);
		
		OrderService svc = new OrderServiceImpl();
		if(svc.updateAddr(member)) {
			req.setAttribute("message", "정상적으로 반영되었습니다.");
			resp.sendRedirect("dak/orderPage.tiles");
		}
		else {
			String path = "dak/error.tiles";
			req.setAttribute("message", "정상적으로 반영되지 않았습니다.");
			req.getRequestDispatcher(path).forward(req, resp);
		}
	}
}
