package co.yedam.common;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.member.control.AddMemberControl;
import co.yedam.member.control.AddMemberForm;
import co.yedam.member.control.LoginControl;
import co.yedam.member.control.LoginForm;
import co.yedam.member.control.LogoutControl;
import co.yedam.main.EventControl;
import co.yedam.main.EventListControl;

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
			
			//회원 컨트롤
			
			   // 회원관련.
			   controls.put("/loginForm.do", new LoginForm());
			   controls.put("/login.do", new LoginControl());
			   controls.put("/logout.do", new LogoutControl());
			
			   // 회원등록
			   controls.put("/addMember.do", new AddMemberControl());
			   controls.put("/addMemberForm.do", new AddMemberForm());
            //주문 컨트롤
			
			//마이페이지 컨트롤
			
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
