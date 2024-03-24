package co.yedam.main.service;

import java.util.List;

import co.yedam.member.Cart;
import co.yedam.product.Product;
import co.yedam.product.SearchCon;

public interface MainProductsService {
	List<Product> list(String order);
	List<Cart> CartList(String memid);
}
