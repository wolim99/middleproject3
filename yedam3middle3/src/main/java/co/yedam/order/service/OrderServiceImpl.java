package co.yedam.order.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.common.DataSource;
import co.yedam.order.Product;
import co.yedam.order.Review;
import co.yedam.order.mapper.OrderMapper;

public class OrderServiceImpl implements OrderService{
	
	SqlSession session = DataSource.getInstance().openSession(true);
	//마이바티스
	OrderMapper mapper = session.getMapper(OrderMapper.class);
	
	//상세페이지 제품 데이터
	@Override
	public Product searchProd(Product product) {
		return mapper.selectProd(product);
	}
	//상세페이지 평점
	@Override
	public float searchRev1(int prodNo) {
		return mapper.selectRev1(prodNo);
	}
	//상세페이지 리뷰개수
	@Override
	public int searchRev2(int prodNo) {
		return mapper.selectRev2(prodNo);
	}
	@Override
	public List<Review> reviewList(Review review) {
		return mapper.reviewList(review);
	}
}
