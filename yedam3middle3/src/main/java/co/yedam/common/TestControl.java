package co.yedam.common;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TestControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String path = "dak/test.tiles";
		RequestDispatcher dispatch = req.getRequestDispatcher(path);//
		dispatch.forward(req, resp);
	}

}
