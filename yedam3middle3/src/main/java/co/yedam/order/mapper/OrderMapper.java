package co.yedam.order.mapper;

import java.util.List;

import co.yedam.order.Product;
import co.yedam.order.Review;


public interface OrderMapper {
	//상세페이지 우측 상단 제품 데이터 가져오기
	Product selectProd(Product product);
	//상세페이지 우측 상단 리뷰 데이터 가져오기(리뷰개수, 평점평균)
	float selectRev1(int prodNo);
	int selectRev2(int prodNo);
	
	List<Review> reviewList(Review review);
}
