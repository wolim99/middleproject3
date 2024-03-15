package co.yedam.order;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Control;
import co.yedam.order.service.OrderService;
import co.yedam.order.service.OrderServiceImpl;

public class DetailPageControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//서비스등록
		OrderService svc = new OrderServiceImpl();
		
		Product product = new Product();
		product.setProdNo(11);
		product = svc.searchProd(product);
		
		//메서드 반환값으로 요청 전달
		req.setAttribute("product", product);
		
		//jsp요청
		String path = "dak/detailPage.tiles";
		req.getRequestDispatcher(path).forward(req, resp);
	}
}
