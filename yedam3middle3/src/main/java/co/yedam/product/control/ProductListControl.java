package co.yedam.product.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.common.Control;
import co.yedam.product.service.ProductService;
import co.yedam.product.service.ProductServiceImpl;

public class ProductListControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		resp.setContentType("text/json;charset=utf-8");
		String pagetype = "'"+req.getParameter("pagetype")+"'";
		
		HttpSession session = req.getSession();
		session.setAttribute("pagetype", pagetype);
		
		String path = "dak/productlist.tiles";
		req.getRequestDispatcher(path).forward(req, resp);

	}

}
