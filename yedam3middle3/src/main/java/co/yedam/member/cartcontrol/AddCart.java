package co.yedam.member.cartcontrol;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Control;
import co.yedam.member.Cart;
import co.yedam.member.service.MemberService;
import co.yedam.member.service.MemberServiceImpl;

public class AddCart implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String id = (String) req.getAttribute("cartNo");

		Cart cart = new Cart();
		cart.setMemNo(id);

		MemberService mvc = new MemberServiceImpl();
		cart = mvc.countCart(cart);

		if (cart == null || cart.getCartQuant() == 0) {
			mvc.insertCart(cart);
			resp.sendRedirect("cart.do");
		} else {
			cart.setCartQuant(cart.getCartQuant() + 1);
			mvc.updateCart(cart);
		}
	}
}
