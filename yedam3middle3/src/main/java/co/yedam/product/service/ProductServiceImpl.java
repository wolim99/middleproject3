package co.yedam.product.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.common.DataSource;
import co.yedam.product.Product;
import co.yedam.product.mapper.ProductMapper;

public class ProductServiceImpl implements ProductService{
	
	SqlSession session = DataSource.getInstance().openSession(true);
	ProductMapper mapper = session.getMapper(ProductMapper.class);

	@Override
	public List<Product> productList() {
		System.out.println(mapper.selectProduct());
		return mapper.selectProduct();
	}

	@Override
	public List<Product> conList(String cond, String param) {
		// TODO Auto-generated method stub
		return mapper.searchProduct(cond, param);
	}


}
