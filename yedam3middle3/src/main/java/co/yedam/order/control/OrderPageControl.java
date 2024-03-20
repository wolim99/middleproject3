package co.yedam.order.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Control;
import co.yedam.member.Member;
import co.yedam.order.service.OrderService;
import co.yedam.order.service.OrderServiceImpl;

public class OrderPageControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		OrderService svc = new OrderServiceImpl();
		String memName = req.getParameter("memName");
		String memAddr = req.getParameter("memAddr");
		
		//기본배송지
		String basicAddr = svc.selectBasicAddr(memName);
		//배송지수정
		Member member = new Member();
		member.setMemAddr(memAddr);
		member.setMemName(memName);
		Boolean updateAddr = true;
		
		//기본배송지		
		req.setAttribute("basicAddr",basicAddr);
		
		//배송지수정
		if(memName == null || memAddr == null) {
			req.setAttribute("message1", "이름과 주소를 입력해 주세요.");
		}
		else {			
			updateAddr = svc.updateAddr(member);
			req.setAttribute("updateAddr", updateAddr);
		}
		
		String path = "dak/orderPage.tiles";
		req.getRequestDispatcher(path).forward(req, resp);
	}
}
