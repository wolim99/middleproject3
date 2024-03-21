package co.yedam.my.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.yedam.common.Control;
import co.yedam.my.Qna;
import co.yedam.my.SearchVO;
import co.yedam.my.service.MyService;
import co.yedam.my.service.MyServiceImpl;

public class QnaTotalControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/json;charset=utf-8");
		String page = req.getParameter("page");
		
		SearchVO search = new SearchVO();
		search.setPage(Integer.parseInt(page));
		
		System.out.println("search값은" + search);
		
		MyService svc = new MyServiceImpl();
		List<Qna> list = svc.qnaSelectList(search);
		
		Gson gson = new GsonBuilder().create();
		
		String json = gson.toJson(list);
		resp.getWriter().print(json);
	}

}
