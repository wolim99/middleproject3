package co.yedam.my;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.common.Control;

public class LogoutControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub\
		HttpSession session = req.getSession();
		session.invalidate();
		
		String path = "dak/myPage.tiles";
		req.getRequestDispatcher(path).forward(req, resp);

	}

}
