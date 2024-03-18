package co.yedam.main.mapper;

import java.util.List;

import co.yedam.product.Product;

public interface MainProductsMapper {
	List<Product> prodList(String order);
	List<Product> randomList();
}
