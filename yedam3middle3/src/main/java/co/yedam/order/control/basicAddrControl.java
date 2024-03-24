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
import co.yedam.order.service.OrderService;
import co.yedam.order.service.OrderServiceImpl;

public class basicAddrControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/json;charset=utf-8");
		
		String logMemNo = req.getParameter("logMemNo");
		OrderService svc = new OrderServiceImpl();
		String basicAddr = svc.selectBasicAddr(Integer.parseInt(logMemNo));
		Map<String, String> map = new HashMap<>();
		if(basicAddr != null) {
			map.put("basicAddr", basicAddr);
			Gson gson = new GsonBuilder().create();
			String json = gson.toJson(map);
			resp.getWriter().print(json);
		}
		else {
			map.put("nobasicAddr", "주소가 없습니다.");
		}
	}
}
