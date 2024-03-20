package co.yedam.my.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Control;
import co.yedam.my.Reply;
import co.yedam.my.service.MyService;
import co.yedam.my.service.MyServiceImpl;

public class ReplyControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/json;charset=utf-8");

		String lNo = req.getParameter("listNo");
		
		MyService svc = new MyServiceImpl();
		Reply reply = svc.getReply(Integer.parseInt(lNo));
		
		req.setAttribute("reply", reply);
		
		String path = "dak/reply.tiles";
		RequestDispatcher dispatch = req.getRequestDispatcher(path);
		dispatch.forward(req, resp);

	}

}
