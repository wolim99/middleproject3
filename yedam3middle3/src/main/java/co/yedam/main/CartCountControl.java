package co.yedam.main;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.yedam.common.Control;
import co.yedam.main.service.MainProductsService;
import co.yedam.main.service.MainProductsServiceImpl;
import co.yedam.product.Product;
import co.yedam.product.SearchCon;

public class RandomProductControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/json;charset=utf-8");
		MainProductsService svc = new MainProductsServiceImpl();
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
		
		List<Product> list = svc.sortlist(search);
		Gson gson = new GsonBuilder().create();
		String json = gson.toJson(list);
		resp.getWriter().print(json);

	}

}
