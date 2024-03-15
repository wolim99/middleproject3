package co.yedam.my;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.common.Control;

public class LoginControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		
		
		Member member = new Member();
		member.setMemId(id);
		member.setMemPw(pw);
		
		MyService svc = new MyServiceImpl();
		member = svc.loginCheck(member);
		
		if(member != null) {
			HttpSession session = req.getSession();
			session.setAttribute("logId", id);
			session.setAttribute("logName", member.getMemName());
			session.setAttribute("logPhone", member.getMemPhone());
			session.setAttribute("logMail", member.getMemMail());
			session.setAttribute("logAddr", member.getMemAddr());
			session.setAttribute("logPoint", member.getMemPoint());
			
			resp.sendRedirect("myPage.do");
		} else {
			req.setAttribute("message", "아이디와 비번을 확인하세요.");
			String path = "board/loginForm.tiles";
			req.getRequestDispatcher(path).forward(req, resp);
		}
		
		
	}

}
