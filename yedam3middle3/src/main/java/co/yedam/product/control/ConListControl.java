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
import co.yedam.product.SearchCon;
import co.yedam.product.service.ProductService;
import co.yedam.product.service.ProductServiceImpl;

public class ConListControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/json;charset=utf-8");
		String[] brand = req.getParameterValues("brand");
		String[] type = req.getParameterValues("type");
		String price = req.getParameter("price");
		String keyword = req.getParameter("keyword");
		String ppage = req.getParameter("ppage");
		String sort = req.getParameter("sort");
		String listtype = req.getParameter("listtype");
		
		SearchCon search = new SearchCon();
		search.setBrand(brand);
		search.setType(type);
		search.setPrice(Integer.parseInt(price));
		search.setKeyword(keyword);
		search.setPpage(Integer.parseInt(ppage));
		search.setSort(sort);
		search.setListtype(listtype);
		
		System.out.println("search: "+search);
		ProductService svc = new ProductServiceImpl();
		List<Product> list = svc.conList(search);
		
		Gson gson = new GsonBuilder().create();
		
		String json = gson.toJson(list);
		//System.out.println(list);
		resp.getWriter().print(json);
	}

}
