package co.yedam.member.cartcontrol;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.naming.spi.DirStateFactory.Result;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import co.yedam.common.Control;
import co.yedam.member.Cart;
import co.yedam.member.service.MemberService;
import co.yedam.member.service.MemberServiceImpl;

public class AddToCartControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String pno = req.getParameter("prodNo");
		String cqn = req.getParameter("cartQuant");
		String mno = req.getParameter("memNo");
		
		Cart cart = new Cart();
		cart.setProdNo(Integer.parseInt(pno));
		cart.setCartQuant(Integer.parseInt(cqn));
		cart.setMemNo(Integer.parseInt(mno));
		
		MemberService mvc = new MemberServiceImpl();
		Map<String, Object> map = new HashMap<>();
		
		if(mvc.countCart(cart) > 0) {
			mvc.updateCart(cart);
		} else {
			mvc.insertCart(cart);
		}
		// JSON
		map.put("retCode", "OK");
		String json = new Gson().toJson(map);
		resp.getWriter().write(json);
		
	}
}
