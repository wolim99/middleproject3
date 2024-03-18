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
	String id = (String) req.getAttribute("memNo");
	
	Cart cart = new Cart();
	cart.setMemNo(id);
	
	MemberService mvc = new MemberServiceImpl();
	cart = mvc.countCart(cart);
	
	// 장바구니에 기존 상품이 있는지 확인
	//int count = MemberService.countCart(cart.getProdNo(), id);

	// 없으면 추가
	
	// 있으면 update
	}
}
