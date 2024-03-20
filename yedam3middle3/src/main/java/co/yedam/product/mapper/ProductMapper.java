package co.yedam.product.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.yedam.product.Product;
import co.yedam.product.SearchCon;

public interface ProductMapper {
	//전체조회
	List<Product> selectProduct();
	//조건조회
	List<Product> searchProduct(SearchCon search);
	/*
	 * @Param("brand") String[] brand , @Param("type") String[] type
	 * , @Param("price") int price , @Param("keyword") String keyword
	 * , @Param("ppage") int ppage , @Param("sort") String sort);
	 */
	
	//페이징
	int selectCount(SearchCon search);
}
