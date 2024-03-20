package co.yedam.member.cartcontrol;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Control;

public class UpdateCartFrom implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String path = "dak/cart.tiles";
		req.getRequestDispatcher(path).forward(req, resp);

	}

}
