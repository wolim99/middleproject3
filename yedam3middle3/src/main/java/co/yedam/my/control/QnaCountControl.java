package co.yedam.my.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Control;
import co.yedam.my.SearchVO;
import co.yedam.my.service.MyService;
import co.yedam.my.service.MyServiceImpl;

public class QnaCountControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/json;charset=utf-8");
		String mno = req.getParameter("memNo");
		
		SearchVO search = new SearchVO();
		search.setMemNo(Integer.parseInt(mno));
		
		MyService svc = new MyServiceImpl();
		int cnt = svc.qnaTotalCnt(search);
		
		resp.getWriter().print("{\"totalCount\":" + cnt + "}");
	}

}
