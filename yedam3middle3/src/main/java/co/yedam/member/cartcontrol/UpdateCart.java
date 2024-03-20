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
			resp.sendRedirect("cart.do");
		} else {
			req.setAttribute("messager", "수정 중 에러가 발생했습니다");
			String path = "dak/error.tiles";
			// 상세페이지 혹은 메인으로 갈것
			req.getRequestDispatcher(path).forward(req, resp);
		}
		
	}

}
