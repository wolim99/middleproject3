package co.yedam.order.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Control;
import co.yedam.order.Product;
import co.yedam.order.Review;
import co.yedam.order.service.OrderService;
import co.yedam.order.service.OrderServiceImpl;

public class DetailPageControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//서비스등록
		OrderService svc = new OrderServiceImpl();
		//메인페이지 파라미터값 받기
		
		
		//제품 데이터
		Product product = new Product();
		product.setProdNo(9);
		product = svc.searchProd(product);
		//리뷰 평점
		float review1 = svc.searchRev1(1);
		//리뷰 개수
		int review2 = svc.searchRev2(1);
		//리뷰 데이터
		Review review3 = new Review();
		review3.setProdNo(1);
		List<Review> reviewList = svc.reviewList(review3);
		
		//메서드 반환값으로 요청 전달
		req.setAttribute("product", product);
		req.setAttribute("review1", review1);
		req.setAttribute("review2", review2);
		req.setAttribute("reviewList", reviewList);
		
		//jsp요청
		String path = "dak/detailPage.tiles";
		req.getRequestDispatcher(path).forward(req, resp);
	}
}
