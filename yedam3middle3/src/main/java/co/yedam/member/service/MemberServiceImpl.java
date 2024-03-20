package co.yedam.member.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.common.DataSource;
import co.yedam.member.Cart;
import co.yedam.member.Member;
import co.yedam.member.mapper.MemberMapper;

public class MemberServiceImpl implements MemberService {

	SqlSession session = DataSource.getInstance().openSession(true);
	MemberMapper mapper = session.getMapper(MemberMapper.class);

// 로그인
	@Override
	public Member loginCheck(Member member) {
		return mapper.selectMember(member);
	}

	@Override
	public boolean insertMember(Member member) {
		return mapper.insertMember(member) == 1;
	}

// 장바구니 
	@Override
	public int insertCart(Cart cart) {
		return mapper.insertCart(cart);
	}

	@Override
	public List<Cart> CartList(String memid) {
		return mapper.cartList(memid);
	}

	@Override
	public boolean deleteCart(Cart cart) {
		return mapper.deleteCart(cart);
	}

	@Override
	public boolean modifyCart(Cart cart) {
		return mapper.modifyCart(cart);
	}

	@Override
	public int totalMoney(Cart cart) {
		return mapper.totalMoney(cart);
	}

	@Override
	public Cart countCart(Cart cart) {
		return mapper.countCart(cart);
	}

	@Override
	public Cart updateCart(Cart cart) {
		return mapper.updateCart(cart);
	}
}
