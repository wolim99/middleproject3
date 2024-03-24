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

public class UpdateAddrControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/json;charset=utf-8");
		
		String logMemNo = req.getParameter("logMemNo");
		String postcode = req.getParameter("postcode");
		String address = req.getParameter("address");
		String detailAddress = req.getParameter("detailAddress");
		String extraAddress = req.getParameter("extraAddress");
		String addr = "("+postcode+") "+address+" "+detailAddress+" "+extraAddress;
		
		Member member = new Member();
		member.setMemAddr(addr);
		member.setMemNo(Integer.parseInt(logMemNo));
		
		OrderService svc = new OrderServiceImpl();
		Map<String, Boolean> map = new HashMap<>();
		System.out.println(svc.updateAddr(member));
		
		boolean updateAddr = false;
		if(svc.updateAddr(member)) {
			updateAddr = true;
			//req.setAttribute("updateAddr",updateAddr);
			map.put("updateAddr", updateAddr);
			Gson gson = new GsonBuilder().create();
			String json = gson.toJson(map);
			resp.getWriter().print(json);
		}
		else {
			//req.setAttribute("updateAddr",updateAddr);
			map.put("updateAddr", updateAddr);
		}
	}
}
