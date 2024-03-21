package co.yedam.my.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Control;
import co.yedam.my.OrdSearchVO;
import co.yedam.my.OrderList;
import co.yedam.my.PageDTO;
import co.yedam.my.SearchVO;
import co.yedam.my.service.MyService;
import co.yedam.my.service.MyServiceImpl;

public class orderListControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/json;charset=utf-8");

		String page = req.getParameter("page");
		page = page == null ? "1" : page;
		
		OrdSearchVO oSearch = new OrdSearchVO();
		oSearch.setOpage(Integer.parseInt(page));
		
		MyService svc = new MyServiceImpl();
		List<OrderList> list = svc.orderList(oSearch);
		
		PageDTO pageDTO = new PageDTO(Integer.parseInt(page), svc.ordTotalCnt(oSearch));
		
		req.setAttribute("list", list);
		req.setAttribute("page", pageDTO);
		
		String path = "dak/orderList.tiles";
		RequestDispatcher dispatch = req.getRequestDispatcher(path);
		dispatch.forward(req, resp);
	}

}
