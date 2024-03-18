package co.yedam.order.service;

import java.util.List;

import co.yedam.order.Product;
import co.yedam.order.Review;


public interface OrderService {
	//상세페이지 우측 상단 제품 데이터 가져오기
	Product searchProd(Product product);
	//상세페이지 우측 상단 리뷰 데이터 가져오기(리뷰개수, 평점평균)
	float searchRev1(int prodNo);
	int searchRev2(int prodNo);
	
	List<Review> reviewList(Review review);
}
