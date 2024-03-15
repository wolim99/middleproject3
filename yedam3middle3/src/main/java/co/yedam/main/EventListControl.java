package co.yedam.main;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Control;

public class EventListControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = "dak/eventList.tiles";
		RequestDispatcher dispatch = req.getRequestDispatcher(path);//
		dispatch.forward(req, resp);
	}

}
