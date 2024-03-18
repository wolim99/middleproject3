package co.yedam.order.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Control;
import co.yedam.order.service.OrderService;
import co.yedam.order.service.OrderServiceImpl;

public class OrderPageControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		OrderService svc = new OrderServiceImpl();
		
		
		String path = "dak/orderPage.tiles";
		req.getRequestDispatcher(path).forward(req, resp);
	}

}
