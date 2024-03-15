package co.yedam.member.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.common.Control;
import co.yedam.member.Member;
import co.yedam.member.service.MemberService;
import co.yedam.member.service.MemberServiceImpl;

public class LoginControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("memId");
		String pw = req.getParameter("memPw");
		System.out.println(req.getParameter("id"));
		System.out.println(id);
		
		Member member = new Member();
		member.setMemId(id);
		member.setMemPw(pw);
		
		MemberService bvc = new MemberServiceImpl();
		member = bvc.loginCheck(member);
		
		if(member != null) { // 아이디, 비번 => 로그인 정상
			HttpSession session = req.getSession(); // 사용자별로 다른 세션값
			session.setAttribute("logid", id); // 세션의 attribute를 활용
			session.setAttribute("logName", member.getMemName());
			
			resp.sendRedirect("main.do");
		} else {
			req.setAttribute("message", "아이디와 비번을 확인 하세요");
			String path ="WEB-INF/view/loginForm.jsp";
			req.getRequestDispatcher(path).forward(req, resp);
		}
	}
}
