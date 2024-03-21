package co.yedam.main.mapper;

import java.util.List;

import co.yedam.product.Product;
import co.yedam.product.SearchCon;

public interface MainProductsMapper {
	List<Product> prodList(String order);
	List<Product> forsort(SearchCon search);
}
