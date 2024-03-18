package co.yedam.product.service;

import java.util.List;

import co.yedam.product.Product;

public interface ProductService {
	List<Product> productList();
	
	List<Product> conList(String brand, String type, int price);
}
