package co.yedam.member.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Control;
import co.yedam.member.Member;
import co.yedam.member.service.MemberService;
import co.yedam.member.service.MemberServiceImpl;

public class AddMemberControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("memId");
		String pw = req.getParameter("memPw");
		String name = req.getParameter("memName");
		String Phone = req.getParameter("memPhone");
		String Mail = req.getParameter("memMail");
		String postcode = req.getParameter("postcode");
		String address = req.getParameter("address");
		String detailAddress = req.getParameter("detailAddress");
		String extraAddress = req.getParameter("extraAddress");
		String Addr = "("+postcode+") "+address+" "+detailAddress+" "+extraAddress;
		
		
		Member member = new Member();
		member.setMemId(id);
		member.setMemPw(pw);
		member.setMemName(name);
		member.setMemPhone(Phone);
		member.setMemMail(Mail);
		member.setMemAddr(Addr);
		
		MemberService mvc = new MemberServiceImpl();
		
		if(mvc.insertMember(member)) {
			// 등록 성공시
			resp.sendRedirect("main.do");
		} else {
			req.setAttribute("message", "등록 중 에러가 발생했습니다.");
			String path = "WEB-INF/view/error.jsp";
			req.getRequestDispatcher(path).forward(req, resp);
		}
	}
}
