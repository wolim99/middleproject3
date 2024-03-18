package co.yedam.main.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.common.DataSource;
import co.yedam.main.mapper.MainProductsMapper;
import co.yedam.product.Product;

public class MainProductsServiceImpl implements MainProductsService{
	SqlSession session = DataSource.getInstance().openSession(true);
	MainProductsMapper mapper = session.getMapper(MainProductsMapper.class);
	@Override
	public List<Product> list(String order) {
		return mapper.prodList(order);
	}

}
