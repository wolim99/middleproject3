package co.yedam.order.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.common.DataSource;
import co.yedam.member.Member;
import co.yedam.order.Review;
import co.yedam.order.mapper.OrderMapper;
import co.yedam.product.Option;
import co.yedam.product.Product;

public class OrderServiceImpl implements OrderService{
	
	SqlSession session = DataSource.getInstance().openSession(true);
	//마이바티스
	OrderMapper mapper = session.getMapper(OrderMapper.class);
	
	//상세페이지 서비스
	
	//제품 데이터
	@Override
	public Product searchProd(int prodNo) {
		return mapper.selectProd(prodNo);
	}
	//연관 데이터
	@Override
	public List<Product> relatedProd(int prodNo) {
		return mapper.relatedProd(prodNo);
	}
	//연관 데이터2
	@Override
	public List<Product> relatedProd2() {
		return mapper.relatedProd2();
	}
	//옵션 데이터
	@Override
	public List<Option> searchOption(int prodNo) {
		return mapper.selectOption(prodNo);
	}
	//리뷰 평점
	@Override
	public String searchRev1(int prodNo) {
		return mapper.selectRev1(prodNo);
	}
	//리뷰 개수
	@Override
	public String searchRev2(int prodNo) {
		return mapper.selectRev2(prodNo);
	}
	//리뷰 리스트
	@Override
	public List<Review> reviewList(int prodNo) {
		return mapper.reviewList(prodNo);
	}
	
	//주문페이지 서비스
	
	//사용자 주소
	@Override
	public String selectBasicAddr(String memName) {
		return mapper.selectBasicAddr(memName);
	}
	//배송지 저장
	@Override
	public Boolean updateAddr(Member member) {
		if(mapper.updateAddr(member)) {
			return true;
		}
		return false;
	}
	
	
	
}