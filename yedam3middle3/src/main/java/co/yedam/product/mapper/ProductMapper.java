package co.yedam.product.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.yedam.product.Product;

public interface ProductMapper {
	//전체조회
	List<Product> selectProduct();
	//조건조회
	List<Product> searchProduct(@Param("brand") String[] brand
			, @Param("type") String[] type
			, @Param("price") int price
			, @Param("keyword") String keyword
			, @Param("ppage") int ppage);
	//페이징
	int selectCount(@Param("brand") String[] brand
			, @Param("type") String[] type
			, @Param("price") int price
			, @Param("keyword") String keyword);
}
