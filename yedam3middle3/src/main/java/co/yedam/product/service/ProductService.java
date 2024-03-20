package co.yedam.product.service;

import java.util.List;

import co.yedam.product.Product;
import co.yedam.product.SearchCon;

public interface ProductService {
	List<Product> productList();
	
	List<Product> conList(SearchCon search);
	
	int totalCount(SearchCon search);
}
