package co.yedam;

import org.apache.ibatis.session.SqlSession;

import co.yedam.common.DataSource;
import co.yedam.main.mapper.MainProductsMapper;
import co.yedam.product.mapper.ProductMapper;

public class MapperTestmain {
	public static void main(String[] args) {
		SqlSession session = DataSource.getInstance().openSession(true);
		MainProductsMapper mapper = session.getMapper(MainProductsMapper.class);
		
		mapper.prodList("prod_price")
		.forEach(product -> System.out.println(product.toString()));
	}
}
