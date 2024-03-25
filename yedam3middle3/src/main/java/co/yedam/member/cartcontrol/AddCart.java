package co.yedam.member.cartcontrol;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.yedam.common.Control;
import co.yedam.member.Cart;
import co.yedam.member.service.MemberService;
import co.yedam.member.service.MemberServiceImpl;

public class AddCart implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/json;charset=utf-8");
		HttpSession session = req.getSession();
		int memNo =  (int) session.getAttribute("logMemNo");
		String pno = req.getParameter("prodNo");
		
		Cart cart = new Cart();
		cart.setMemNo(memNo);
		cart.setProdNo(Integer.parseInt(pno));
		
		MemberService mvc = new MemberServiceImpl();
		Map<String, String> map = new HashMap<>();
		
		if(mvc.insertselectCart(cart) == 0) {
			map.put("retCode", "NG");
		} else {
			map.put("retCode", "OK");
			Gson gson = new GsonBuilder().create();
			String json = gson.toJson(map);
			resp.getWriter().print(json);
		}
		resp.sendRedirect("cart.do");
	}
}
