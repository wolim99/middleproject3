package co.yedam.main;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.common.Control;

public class MainSearchControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/json;charset=utf-8");
		String type = "'"+req.getParameter("type")+"'";
		String search = "'"+req.getParameter("search")+"'";
		String pagetype = "'"+req.getParameter("pagetype")+"'";
		HttpSession session = req.getSession();
		session.setAttribute("type", type);
		session.setAttribute("search", search);
		session.setAttribute("pagetype", pagetype);
		String path="dak/productlist2.tiles";
		req.getRequestDispatcher(path).forward(req, resp);
	}

}
