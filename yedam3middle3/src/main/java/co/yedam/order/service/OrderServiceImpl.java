package co.yedam.order.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.common.DataSource;
import co.yedam.order.Product;
import co.yedam.order.mapper.OrderMapper;

public class OrderServiceImpl implements OrderService{
	
	SqlSession session = DataSource.getInstance().openSession(true);
	//마이바티스
	OrderMapper mapper = session.getMapper(OrderMapper.class);
	
	@Override
	public Product searchProd(Product product) {
		return mapper.selectProd(product);
	}
}
