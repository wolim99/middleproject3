package co.yedam.my;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Control;

public class QnaControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/json;charset=utf-8");
		MyService svc = new MyServiceImpl();
		List<Qna> list = svc.qnaList();

		String json = "[";
		for (int i = 0; i < list.size(); i++) {
			json += "{\"inqNo\":\"" + list.get(i).getInqNo() + "\",\"qType\":\"" + list.get(i).getInqType()
					+ "\",\"qContent\":\"" + list.get(i).getInqContent() + "\",\"qResp\":\"" + list.get(i).getInqResp()
					+ "\",\"mNo\":\"" + list.get(i).getMemNo() + "\"}";
			if (i != list.size() - 1) {
				json += ",";
			}
		}
		json += "]";

		resp.getWriter().print(json);

	}
}
