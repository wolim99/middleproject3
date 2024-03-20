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
	public List<Product> conList(String[] brand, String[] type, int price, String keyword, int ppage) {
		// TODO Auto-generated method stub
		return mapper.searchProduct(brand, type, price, keyword, ppage);
	}

	@Override
	public int totalCount(String[] brand, String[] type, int price, String keyword) {
		// TODO Auto-generated method stub
		return mapper.selectCount(brand, type, price, keyword);
	}


}
