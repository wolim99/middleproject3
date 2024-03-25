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
import co.yedam.member.Cart;

public class ListCartControl2 implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/json;charset=utf-8");

		String memid = req.getParameter("memNo");
		
		MainProductsService mvc = new MainProductsServiceImpl();
		List<Cart> list = mvc.CartList(memid);
		Gson gson = new GsonBuilder().create();

		String json = gson.toJson(list);
		resp.getWriter().print(json);

	}
}
