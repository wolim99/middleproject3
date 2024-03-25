package co.yedam.member.cartcontrol;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.yedam.common.Control;
import co.yedam.member.Cart;
import co.yedam.member.service.MemberService;
import co.yedam.member.service.MemberServiceImpl;

public class ListCartControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/json;charset=utf-8");
		HttpSession session = req.getSession();
		String memid = (String) session.getAttribute("logid");
		String pno = req.getParameter("prodNo");
		
		Cart cart = new Cart();
		System.out.println("opt"+req.getParameter("option"));
		System.out.println("inp"+req.getParameter("inputcut"));
		if (req.getParameter("option")== null) {
			String opt = req.getParameter("option");
			cart.setOption(opt);
			System.out.println("옵션 있음");
		}
		if (req.getParameter("inputcut")!=null) {
			String incut = req.getParameter("inputcut");
			cart.setInputcut(Integer.parseInt(incut));
			System.out.println("인풋 값 있음");
		}
		
		System.out.println("pno: "+pno);
		System.out.println("id: "+ memid);
		cart.setMemId(memid);
		cart.setProdNo(1);

		MemberService mvc = new MemberServiceImpl();
		List<Cart> list = mvc.CartList(memid);
		Gson gson = new GsonBuilder().create();

		String json = gson.toJson(list);
		resp.getWriter().print(json);

	}
}
