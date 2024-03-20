package co.yedam.product.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Control;
import co.yedam.product.SearchCon;
import co.yedam.product.service.ProductService;
import co.yedam.product.service.ProductServiceImpl;

public class ProductCountControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/json;charset=utf-8");
		String[] brand = req.getParameterValues("brand");
		String[] type = req.getParameterValues("type");
		String price = req.getParameter("price");
		String keyword = req.getParameter("keyword");
		String listtype = req.getParameter("listtype");
		
		SearchCon search = new SearchCon();
		search.setBrand(brand);
		search.setType(type);
		search.setPrice(Integer.parseInt(price));
		search.setKeyword(keyword);
		search.setListtype(listtype);
		System.out.println("countsearch:"+search);
		
		ProductService svc = new ProductServiceImpl();
		int cnt = svc.totalCount(search);
		
		resp.getWriter().print("{\"totalCount\":" + cnt + "}");
	}

}
