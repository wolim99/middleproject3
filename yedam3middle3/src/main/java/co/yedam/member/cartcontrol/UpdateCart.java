package co.yedam.member.cartcontrol;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Control;
import co.yedam.member.Cart;
import co.yedam.member.service.MemberService;
import co.yedam.member.service.MemberServiceImpl;

public class UpdateCart implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String mno = req.getParameter("memNo");
		String pno = req.getParameter("prodNo");
		String cartQ = req.getParameter("cartQuant");
		
		Cart cart = new Cart();
		cart.setMemNo(mno);
		cart.setProdNo(Integer.parseInt(pno));
		cart.setCartQuant(Integer.parseInt(cartQ));
		
		MemberService mvc = new MemberServiceImpl();
		
		if(mvc.modifyCart(cart)) {
			resp.getWriter().print("{\"retCode\": \"OK\"}");
		} else {
			resp.getWriter().print("{\"retCode\": \"NG\"}");
		}
	}
}
