package co.yedam.member.cartcontrol;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.yedam.common.Control;
import co.yedam.member.Cart;
import co.yedam.member.service.MemberService;
import co.yedam.member.service.MemberServiceImpl;

public class ListCartControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/json;charset=utf-8");
		
		String memid = req.getParameter("memNo");
		System.out.println(memid);
		
		Cart cart = new Cart();
		cart.setMemNo(Integer.parseInt(memid));
		
		MemberService mvc = new MemberServiceImpl();
		List<Cart> list = mvc.CartList(memid);
		Gson gson = new GsonBuilder().create();
		
		String json = gson.toJson(list);
		resp.getWriter().print(json);
		
	}
}
