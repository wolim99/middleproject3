package co.yedam.member.mapper;


import java.util.List;
import java.util.Map;

import co.yedam.member.Cart;
import co.yedam.member.Member;

public interface MemberMapper {
	
	
	// 로그인 
	
	int insertMember(Member member);

	Member selectMember(Member member);
	
	// 장바구니
	
	int insertCart(Cart cart);
	
	List<Cart> cartList(String memNo);
	
	boolean deleteCart(Cart cart);
	
	// 합금액
	int totalMoney(Cart cart);
	
	// 장바구니 상품 확인
	int countCart(Cart cart);
	
	// 장바구니 수량 변경
	int updateCart(Cart cart);
	
	// 옵션
	int selectoption(Cart cart);
	
	int insertselectCart(Cart cart);

	int countCart(String pno, String mno);
	
	
	
}
