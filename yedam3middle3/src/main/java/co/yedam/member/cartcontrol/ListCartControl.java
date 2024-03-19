package co.yedam.member.cartcontrol;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Control;
import co.yedam.member.Cart;
import co.yedam.member.service.MemberService;
import co.yedam.member.service.MemberServiceImpl;

public class ListCartControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/json;charset=utf-8");
		
		MemberService mvc = new MemberServiceImpl();
		List<Cart> list = mvc.CartList();
	
		String json = "[";
		for(int i=0; i<list.size(); i++) {
			json += "{\"cartNo\": \""+ list.get(i).getCartNo()//
					+"\",\"cartName\": \""+list.get(i).getProdName()//
					+"\",\"cartPrice\": \""+list.get(i).getProdPrice()//
					+"\",\"cartQuant\": \""+list.get(i).getCartQuant()//
					+"\"}";
			if(i != list.size()-1) {
			json += ",";
			}
		}
		json += "]";
		
		resp.getWriter().print(json);
	}
}
