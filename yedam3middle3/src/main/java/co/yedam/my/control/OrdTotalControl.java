package co.yedam.my.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.yedam.common.Control;
import co.yedam.my.OrdSearchVO;
import co.yedam.my.OrderList;
import co.yedam.my.service.MyService;
import co.yedam.my.service.MyServiceImpl;

public class OrdTotalControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/json;charset=utf-8");
		String opage = req.getParameter("opage");
		String mno = req.getParameter("memNo");
		
		OrdSearchVO osearch = new OrdSearchVO();
		osearch.setOpage(Integer.parseInt(opage));
		osearch.setMemNo(Integer.parseInt(mno));
		
		MyService svc = new MyServiceImpl();
		List<OrderList> list = svc.ordSelectList(osearch);
		
		Gson gson = new GsonBuilder().create();
		
		String json = gson.toJson(list);
		resp.getWriter().print(json);
		
	}

}