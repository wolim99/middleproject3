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
import co.yedam.member.control.AddMemberControl;
import co.yedam.member.control.AddMemberForm;
import co.yedam.member.control.CartProduct;
import co.yedam.member.control.LoginControl;
import co.yedam.member.control.LoginForm;
import co.yedam.member.control.LogoutControl;
import co.yedam.main.EventControl;
import co.yedam.main.EventListControl;
import co.yedam.main.MainProductsControl;
import co.yedam.main.RandomProductControl;
import co.yedam.order.control.DetailPageControl;
import co.yedam.order.control.OrderPageControl;
import co.yedam.my.control.MemberUpdateControl;
import co.yedam.my.control.ModifyMemberControl;
import co.yedam.my.control.MyPageControl;
import co.yedam.my.control.QnaControl;
import co.yedam.my.control.QnaDetailControl;
import co.yedam.my.control.QnaMainControl;
import co.yedam.my.control.RemoveForm;
import co.yedam.my.control.RemoveMemberControl;
import co.yedam.my.control.orderLControl;
import co.yedam.my.control.orderListControl;
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
			controls.put("/mainProducts.do", new MainProductsControl());
			controls.put("/randProd.do", new RandomProductControl());
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
			controls.put("/myPage.do", new MyPageControl()); // mypage 목록 페이지.
			
			controls.put("/qna.do", new QnaControl());
			controls.put("/qnaMain.do", new QnaMainControl()); // qna목록 페이지.
			controls.put("/qnaDetail.do", new QnaDetailControl()); // qna 상세 페이지.
			
			controls.put("/memberUpdate.do", new MemberUpdateControl()); // 회원정보 수정 페이지.
			controls.put("/modifyMember.do", new ModifyMemberControl()); // 회원정보 수정.
			controls.put("/removeForm.do", new RemoveForm()); // 회원정보 삭제 페이지.
			controls.put("/removeMember.do", new RemoveMemberControl()); // 회원정보 삭제.
			
			controls.put("/orderList.do", new orderListControl()); // 주문 목록 페이지.
			controls.put("/orderL.do", new orderLControl()); //
			
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
