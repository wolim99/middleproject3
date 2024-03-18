package co.yedam;

import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import co.yedam.common.DataSource;
import co.yedam.my.Qna;
import co.yedam.my.mapper.MyMapper;

public class MapperTest {
	public static void main(String[] args) {

		MyMapper mapper = DataSource.getInstance().openSession(true).getMapper(MyMapper.class);

		List<Qna> list = mapper.qnaList();
		for (Qna value : list) {
			System.out.println(value);
		}
	}

}
