package co.yedam.member.service;

import java.util.List;

import co.yedam.member.Cart;
import co.yedam.member.Member;

public interface MemberService {
	
	// 로그인
	Member loginCheck(Member member);
	
	boolean insertMember(Member member);
	
	// 장바구니
	int insertCart(Cart cart);
	
	List<Cart> CartList();
	
	boolean deleteCart(Cart cart);
	
	boolean modifyCart(Cart cart);
	
	// 합금액
	int totalMoney(Cart cart);
		
	// 장바구니 상품 확인
	Cart countCart(Cart cart);
		
	// 장바구니 수량 변경
	Cart updateCart(Cart cart);
}
