package co.yedam.common;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.product.control.ConListControl;
import co.yedam.my.LoginControl;
import co.yedam.my.LoginForm;
import co.yedam.my.LogoutControl;
import co.yedam.my.MemberUpdateControl;
import co.yedam.my.MyPageControl;
import co.yedam.member.control.AddMemberControl;
import co.yedam.member.control.AddMemberForm;
import co.yedam.member.control.CartProduct;
import co.yedam.main.EventControl;
import co.yedam.main.EventListControl;
import co.yedam.order.DetailPageControl;
import co.yedam.order.OrderPageControl;

import co.yedam.my.QnaControl;
import co.yedam.my.QnaDetailControl;
import co.yedam.my.QnaMainControl;
import co.yedam.my.orderListControl;

import co.yedam.product.control.PListControl;
import co.yedam.product.control.ProductListControl;

public class FrontController extends HttpServlet{
//	Map타입으로 url과 실행할 클래스.
	Map<String, Control> controls;
	
	public FrontController(){
		controls = new HashMap<>();
	}

	@Override
		public void init(ServletConfig config) throws ServletException {
			// TODO Auto-generated method stub
			controls.put("/main.do", new MainControl());
			controls.put("/test.do", new TestControl());
			
			//메인페이지 컨트롤
			controls.put("/eventList.do", new EventListControl());
			controls.put("/event.do", new EventControl());
			//제품 컨트롤
			controls.put("/plist.do", new PListControl());
			controls.put("/productList.do", new ProductListControl());
			controls.put("/conlist.do", new ConListControl());
			//회원 컨트롤
			
			   // 회원관련.
			   controls.put("/loginForm.do", new LoginForm());
			   controls.put("/login.do", new LoginControl());
			   controls.put("/logout.do", new LogoutControl());
			
			   // 회원등록
			   controls.put("/addMember.do", new AddMemberControl());
			   controls.put("/addMemberForm.do", new AddMemberForm()); 
			   
			   // 장바구니
			   controls.put("/cartProduct.do", new CartProduct());
			   
            //주문 컨트롤
			
			//주문 컨트롤
			controls.put("/detailPage.do", new DetailPageControl());
			controls.put("/orderPage.do", new OrderPageControl());
			//마이페이지 컨트롤
			controls.put("/qna.do", new QnaControl());
			controls.put("/qnaMain.do", new QnaMainControl()); // qna목록 페이지.
			controls.put("/qnaDetail.do", new QnaDetailControl()); // qna 상세 페이지.
			
			controls.put("/myPage.do", new MyPageControl()); // mypage 목록 페이지.
			controls.put("/memberUpdate.do", new MemberUpdateControl()); // 회원정보 수정 페이지.
			controls.put("/orderList.do", new orderListControl()); // 주문 목록 페이지.
			
			controls.put("/login.do", new LoginControl()); // 로그인처리
			controls.put("/loginForm.do", new LoginForm()); // 로그인창 테스트용
			controls.put("/logout.do", new LogoutControl()); // 로그아웃 테스트용
			
		}
	
	@Override
		protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			// TODO Auto-generated method stub
			req.setCharacterEncoding("utf-8");
			
			String uri = req.getRequestURI(); // 현재 페이지의 url
			
			String context = req.getContextPath(); // 어플리케이션
			
			String path = uri.substring(context.length());
			System.out.println("path: " + path);
			
			Control control = controls.get(path);
			control.exec(req, resp); //요청url과 실행컨트롤을 호출.
		}
	
}
