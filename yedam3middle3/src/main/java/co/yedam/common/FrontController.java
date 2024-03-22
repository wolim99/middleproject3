package co.yedam.common;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.member.cartcontrol.CartControl;
import co.yedam.member.cartcontrol.DeleteCart;
import co.yedam.member.cartcontrol.ListCartControl;
import co.yedam.member.cartcontrol.UpdateCart;
import co.yedam.main.EventControl;
import co.yedam.main.EventListControl;
import co.yedam.main.MainProductsControl;
import co.yedam.main.MainSearchControl;
import co.yedam.main.RandomProductControl;
import co.yedam.member.control.AddMemberControl;
import co.yedam.member.control.AddMemberForm;
import co.yedam.member.control.LoginControl;
import co.yedam.member.control.LoginForm;
import co.yedam.member.control.LogoutControl;
import co.yedam.my.control.AddQnaControl;
import co.yedam.my.control.AddReplyControl;
import co.yedam.my.control.MemberUpdateControl;
import co.yedam.my.control.ModifyMemberControl;
import co.yedam.my.control.MyPageControl;
import co.yedam.my.control.OrdCountControl;
import co.yedam.my.control.OrdTotalControl;
import co.yedam.my.control.QnaAddFormControl;
import co.yedam.my.control.QnaControl;
import co.yedam.my.control.QnaCountControl;
import co.yedam.my.control.QnaDetailControl;
import co.yedam.my.control.QnaMainControl;
import co.yedam.my.control.QnaTotalControl;
import co.yedam.my.control.RemoveForm;
import co.yedam.my.control.RemoveMemberControl;
import co.yedam.my.control.ReplyControl;
import co.yedam.my.control.orderLControl;
import co.yedam.my.control.orderListControl;
import co.yedam.order.control.DetailPageControl;
import co.yedam.order.control.OrderPageControl;
import co.yedam.order.control.UpdateAddrControl;
import co.yedam.product.control.ConListControl;
import co.yedam.product.control.PListControl;
import co.yedam.product.control.ProductCountControl;
import co.yedam.product.control.ProductListControl;

public class FrontController extends HttpServlet {
//	Map타입으로 url과 실행할 클래스.
	Map<String, Control> controls;

	public FrontController() {
		controls = new HashMap<>();
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		controls.put("/main.do", new MainControl());
		controls.put("/test.do", new TestControl());

		// 메인페이지 컨트롤

		controls.put("/eventList.do", new EventListControl());
		controls.put("/event.do", new EventControl());
		controls.put("/mainProducts.do", new MainProductsControl());
		controls.put("/randProd.do", new RandomProductControl());
		controls.put("/mainsearch.do", new MainSearchControl());
		// 제품 컨트롤
		controls.put("/plist.do", new PListControl());
		controls.put("/productList.do", new ProductListControl());
		controls.put("/conlist.do", new ConListControl());
		controls.put("/productcount.do", new ProductCountControl());
		// 회원 컨트롤

		// 회원관련.
		controls.put("/loginForm.do", new LoginForm());
		controls.put("/login.do", new LoginControl());
		controls.put("/logout.do", new LogoutControl());

		// 회원등록
		controls.put("/addMember.do", new AddMemberControl());
		controls.put("/addMemberForm.do", new AddMemberForm());
		
		
		// 장바구니
		controls.put("/cart.do", new CartControl()); // 카트 페이지
		controls.put("/listcartForm.do", new ListCartControl());
		// controls.put("/insertcartForm.do", new AddCartForm());
		// controls.put("/insertcart.do", new AddCart());
		controls.put("/deletecart.do", new DeleteCart());
		// controls.put("/updatecartForm.do", new UpdateCartFrom());
		controls.put("/updatecart.do", new UpdateCart());

		// 주문 컨트롤

		controls.put("/detailPage.do", new DetailPageControl());
		controls.put("/orderPage.do", new OrderPageControl());
		controls.put("/updateAddr.do", new UpdateAddrControl());
		// 마이페이지 컨트롤
		controls.put("/myPage.do", new MyPageControl()); // mypage 목록 페이지.

		controls.put("/qna.do", new QnaControl());
		controls.put("/qnaMain.do", new QnaMainControl()); // qna목록 페이지.
		controls.put("/qnaDetail.do", new QnaDetailControl()); // qna 상세 페이지.
		controls.put("/qnaAddForm.do", new QnaAddFormControl()); // qna 작성 페이지.
		controls.put("/addQna.do", new AddQnaControl()); // qna 작성.
		controls.put("/qnaTotal.do", new QnaTotalControl()); // qna
		controls.put("/qnaCount.do", new QnaCountControl()); // qna 페이징 카운트
		
		controls.put("/memberUpdate.do", new MemberUpdateControl()); // 회원정보 수정 페이지.
		controls.put("/modifyMember.do", new ModifyMemberControl()); // 회원정보 수정.
		controls.put("/removeForm.do", new RemoveForm()); // 회원정보 삭제 페이지.
		controls.put("/removeMember.do", new RemoveMemberControl()); // 회원정보 삭제.

		controls.put("/orderList.do", new orderListControl()); // 주문 목록 페이지.
		controls.put("/orderL.do", new orderLControl()); // 주문 리스트
		controls.put("/ordTotal.do", new OrdTotalControl()); // 주문 
		controls.put("/ordCount.do", new OrdCountControl()); // 주문 페이징 카운트
		
		controls.put("/reply.do", new ReplyControl()); // 리뷰 작성페이지.
		controls.put("/addReply.do", new AddReplyControl()); // 리뷰 작성.

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
		control.exec(req, resp); // 요청url과 실행컨트롤을 호출.
	}

}
