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

public class QnaControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/json;charset=utf-8");
		
		SearchVO search = new SearchVO();
		MyService svc = new MyServiceImpl();
		List<Qna> list = svc.qnaList(search);
		
		
		/*
		 * String json = "["; for (int i = 0; i < list.size(); i++) { json +=
		 * "{\"inqNo\":\"" + list.get(i).getInqNo() + "\",\"qType\":\"" +
		 * list.get(i).getInqType() + "\",\"qContent\":\"" + list.get(i).getInqContent()
		 * + "\",\"qResp\":\"" + list.get(i).getInqResp() + "\",\"mNo\":\"" +
		 * list.get(i).getMemNo() + "\"}"; if (i != list.size() - 1) { json += ","; } }
		 * json += "]";
		 */
		
		
		Gson gson = new GsonBuilder().create();
		
		String json = gson.toJson(list); // 객체 -> json문자열.
		resp.getWriter().print(json);

	}
}
