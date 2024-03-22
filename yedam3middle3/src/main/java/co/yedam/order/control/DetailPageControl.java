package co.yedam.order.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Control;
import co.yedam.order.Review;
import co.yedam.order.service.OrderService;
import co.yedam.order.service.OrderServiceImpl;
import co.yedam.product.Option;
import co.yedam.product.Product;

public class DetailPageControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//서비스등록
		OrderService svc = new OrderServiceImpl();
		
		//제품페이지에서 파라미터 값 받기
		String prodNo = req.getParameter("prodNo");
		
		//제품 데이터
		Product product = new Product();
		product = svc.searchProd(Integer.parseInt(prodNo));
		
		List<Product> productList2 = svc.relatedProd2();
		if(svc.relatedProd(Integer.parseInt(prodNo)) == null) {
			//연관 데이터
			List<Product> productList = svc.relatedProd(Integer.parseInt(prodNo));
			//연관 데이터2
			req.setAttribute("productList", productList);
			req.setAttribute("productList2", productList2);
		}
		else {
			//연관 데이터
			List<Product> productList = svc.relatedProd(Integer.parseInt(prodNo));
			req.setAttribute("productList", productList);
			req.setAttribute("productList2", productList2);
		}
		
		
		
		//옵션 데이터
		List<Option> optionList = svc.searchOption(Integer.parseInt(prodNo));
		
		
		//리뷰 평점, 개수	
		if(svc.searchRev2(Integer.parseInt(prodNo)) == null) {
			req.setAttribute("noReviewMsg", "작성된 리뷰가 없습니다!");
			String review2 = svc.searchRev2(Integer.parseInt(prodNo));
			req.setAttribute("review2", review2);
		}
		else {
			if(svc.searchRev1(Integer.parseInt(prodNo)) != null) {
				String review1 = svc.searchRev1(Integer.parseInt(prodNo));
				String review2 = svc.searchRev2(Integer.parseInt(prodNo));
				req.setAttribute("review1", Integer.parseInt(review1));
				req.setAttribute("review2", Integer.parseInt(review2));
			}
			else {
				String review2 = svc.searchRev2(Integer.parseInt(prodNo));
				req.setAttribute("review1", 0);
				req.setAttribute("review2", Integer.parseInt(review2));
			}
		}
				
		//리뷰 데이터
		List<Review> reviewList = svc.reviewList(Integer.parseInt(prodNo));
		
		//메서드 반환값으로 요청 전달
		req.setAttribute("product", product);
		req.setAttribute("optionList", optionList);
		req.setAttribute("reviewList", reviewList);
		
		//jsp요청
		String path = "dak/detailPage.tiles";
		req.getRequestDispatcher(path).forward(req, resp);
	}
}
