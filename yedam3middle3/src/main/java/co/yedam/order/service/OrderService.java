package co.yedam.order.service;

import java.util.List;

import co.yedam.member.Member;
import co.yedam.order.Review;
import co.yedam.product.Option;
import co.yedam.product.Product;


public interface OrderService {
	
	//상세페이지 서비스
	
	//제품 데이터
	Product searchProd(int prodNo);
	//연관 데이터
	List<Product> relatedProd(int prodNo);
	//연관 데이터2
	List<Product> relatedProd2();
	//옵션 데이터
	List<Option> searchOption(int prodNo);
	//리뷰 평점
	String searchRev1(int prodNo);
	//리뷰 개수
	String searchRev2(int prodNo);
	//리뷰 리스트
	List<Review> reviewList(int prodNo);
	
	//주문페이지 서비스
	
	//사용자 주소
	String selectBasicAddr(int memNo);
	//배송지 저장
	Boolean updateAddr(Member member);
}

