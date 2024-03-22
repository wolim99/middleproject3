package co.yedam.my.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.common.Control;
import co.yedam.my.service.MyService;
import co.yedam.my.service.MyServiceImpl;

public class RemoveMemberControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String mno = req.getParameter("mno");
		
		MyService svc = new MyServiceImpl();
		
		if (svc.removeMember(Integer.parseInt(mno))) {
			resp.sendRedirect("myPage.do");
			
		} else {
			System.out.println("오류발생");
		}
	}

}
