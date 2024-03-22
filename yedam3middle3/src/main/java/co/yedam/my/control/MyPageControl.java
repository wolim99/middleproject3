package co.yedam.my.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Control;
import co.yedam.my.OrdPageDTO;
import co.yedam.my.OrdSearchVO;
import co.yedam.my.OrderList;
import co.yedam.my.PageDTO;
import co.yedam.my.Qna;
import co.yedam.my.SearchVO;
import co.yedam.my.service.MyService;
import co.yedam.my.service.MyServiceImpl;
import co.yedam.order.service.OrderService;

public class MyPageControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/json;charset=utf-8");
		
		String page = req.getParameter("page");
		page = page == null ? "1" : page;
		
		String opage = req.getParameter("opage");
		opage = opage == null ? "1" : opage; 
		
		SearchVO search = new SearchVO();
		search.setQpage(Integer.parseInt(page));
		
		OrdSearchVO oSearch = new OrdSearchVO();
		oSearch.setOpage(Integer.parseInt(opage));
		
		MyService svc = new MyServiceImpl();
		List<Qna> list = svc.qnaList();
		List<OrderList> olist = svc.orderList();
		
		PageDTO pageDTO = new PageDTO(Integer.parseInt(page), svc.qnaTotalCnt(search));
		OrdPageDTO OPageDTO = new OrdPageDTO(Integer.parseInt(opage), svc.ordTotalCnt(oSearch));
		
		req.setAttribute("list", list);
		req.setAttribute("page", pageDTO);
		
		req.setAttribute("olist", olist);
		req.setAttribute("opage", OPageDTO);
		
		String path = "dak/myPage.tiles";
		RequestDispatcher dispatch = req.getRequestDispatcher(path);
		dispatch.forward(req, resp);
	}

}
