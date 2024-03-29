package co.yedam.order.control;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.yedam.common.Control;
import co.yedam.member.Member;
import co.yedam.order.service.OrderService;
import co.yedam.order.service.OrderServiceImpl;

public class OrderPageControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		OrderService svc = new OrderServiceImpl();
		/*
		resp.setContentType("text/json;charset=utf-8");
		
		String logMemNo = req.getParameter("logMemNo");
		Member basicInfo = new Member();
		basicInfo = svc.selectBasicInfo(Integer.parseInt(logMemNo));
		Map<String, Member> map = new HashMap<>();
		if(basicInfo != null){
			map.put("basicInfo", basicInfo);
			Gson gson = new GsonBuilder().create();
			String json = gson.toJson(map);
			resp.getWriter().print(json);
		}
		*/
		String path = "dak/orderPage.tiles";
		req.getRequestDispatcher(path).forward(req, resp);
	}
}
