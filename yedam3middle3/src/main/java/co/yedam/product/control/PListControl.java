package co.yedam.product.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.yedam.common.Control;
import co.yedam.product.Product;
import co.yedam.product.service.ProductService;
import co.yedam.product.service.ProductServiceImpl;

public class PListControl implements Control{

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/json;charset=utf-8");
//		resp.setContentType("text/json;charset=euc-kr");
		ProductService svc = new ProductServiceImpl();
		List<Product> list = svc.productList();
		
//		String json = "[";
//		for(int i = 0; i<list.size(); i++) {
//			json += "{\"pno\":\"" + list.get(i).getProdNo() //
//					+"\",\"pname\":\"" + list.get(i).getProdName() //
//					+"\",\"pbrand\":\"" + list.get(i).getProdBrand() //
//					+"\",\"pprice\":\"" + list.get(i).getProdPrice() //
//					+"\",\"ptype\":\"" + list.get(i).getProdType() //
//					+"\",\"psale\":\"" + list.get(i).getProdSale() //
//					+"\",\"pfrom\":\"" + list.get(i).getProdFrom() //
//					+"\",\"pdate\":\"" + list.get(i).getProdDate() //
//					+"\",\"pstock\":\"" + list.get(i).getProdStock() //
//					+"\",\"pordCnt\":\"" + list.get(i).getProdOrdCnt() //
//					+"\",\"pimg\":\"" + list.get(i).getProdImg() //
//					+"\"}";
//			if (i != list.size() - 1) {
//				json += ",";
//			}
//		}
//		json += "]";
		
		Gson gson = new GsonBuilder().create();
		
		String json = gson.toJson(list);
		System.out.println(list);
		resp.getWriter().print(json);
	}

}
