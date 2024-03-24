package co.yedam.member.cartcontrol;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.yedam.common.Control;
import co.yedam.member.Cart;
import co.yedam.member.service.MemberService;
import co.yedam.member.service.MemberServiceImpl;

public class AddCart2 implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/json;charset=utf-8");
		
		String prodNo = req.getParameter("prodNo");
		String cartQuant = req.getParameter("prodCnt");
		String[] optionList = req.getParameterValues("optionList");
		
		Cart cart = new Cart();
		cart.setProdNo(Integer.parseInt(prodNo));
		cart.setCartQuant(Integer.parseInt(cartQuant));
		
		
		MemberService mvc = new MemberServiceImpl();
		Map<String, String> map = new HashMap<>();
		
		if(mvc.insertselectCart(cart) == 0) {
			map.put("retCode", "NG");
		} else {
			map.put("retCode", "OK");
			Gson gson = new GsonBuilder().create();
			String json = gson.toJson(map);
			resp.getWriter().print(json);
		}

	}

}
