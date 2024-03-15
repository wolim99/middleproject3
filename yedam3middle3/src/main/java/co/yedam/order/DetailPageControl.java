package co.yedam.order;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Control;

public class DetailPageControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String path = "dak/detailPage.tiles";
		RequestDispatcher dispatch = req.getRequestDispatcher(path);//
		dispatch.forward(req, resp);

	}

}
