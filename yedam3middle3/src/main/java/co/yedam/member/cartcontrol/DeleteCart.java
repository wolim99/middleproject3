package co.yedam.member.cartcontrol;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Control;
import co.yedam.member.Cart;
import co.yedam.member.service.MemberService;
import co.yedam.member.service.MemberServiceImpl;

public class DeleteCart implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String cartno = req.getParameter("cartNo");

		Cart cart = new Cart();
		cart.setCartNo(cartno);

		MemberService mvc = new MemberServiceImpl();

		try {
			if (mvc.deleteCart(cart)) {
				resp.getWriter().print("{\"retCode\": \"OK\"}");
			}
		} catch (Exception e) {
			e.printStackTrace();
			resp.getWriter().print("{\"retCode\": \"NG\"}");
		}
	}
}
