package co.yedam.my.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Control;
import co.yedam.member.Member;
import co.yedam.my.service.MyService;
import co.yedam.my.service.MyServiceImpl;

public class ModifyMemberControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String mname = req.getParameter("memName");
		String mno = req.getParameter("memNo");
		String pw = req.getParameter("memPw");
		String phone = req.getParameter("memPhone");
		String mail = req.getParameter("memMail");
		String addr = req.getParameter("memAddr");
		
		Member member = new Member();
		member.setMemName(mname);
		member.setMemNo(Integer.parseInt(mno));
		member.setMemPw(pw);
		member.setMemPhone(phone);
		member.setMemMail(mail);
		member.setMemAddr(addr);
		
		MyService svc = new MyServiceImpl();
		
		if (svc.modifyMember(member)) {
			resp.getWriter().print("{\"retCode\": \"OK\"}");
			resp.sendRedirect("logout.do");
		} else {
			resp.getWriter().print("{\"retCode\": \"NG\"}");
		}
	}
}
