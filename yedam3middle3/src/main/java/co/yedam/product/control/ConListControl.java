package co.yedam.product.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.yedam.common.Control;
import co.yedam.product.Product;
import co.yedam.product.service.ProductService;
import co.yedam.product.service.ProductServiceImpl;

public class ConListControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String brand = req.getParameter("brand");
		String type = req.getParameter("type");
		String price = req.getParameter("price");
		String keyword = req.getParameter("keyword");
		System.out.println("1: "+keyword);
		resp.setContentType("text/json;charset=utf-8");
		ProductService svc = new ProductServiceImpl();
		List<Product> list = svc.conList(brand, type, Integer.parseInt(price), keyword);
		
		Gson gson = new GsonBuilder().create();
		
		String json = gson.toJson(list);
		System.out.println(list);
		resp.getWriter().print(json);
	}

}
