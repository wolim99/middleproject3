package co.yedam;

import java.util.List;

import co.yedam.common.DataSource;
import co.yedam.my.Qna;
import co.yedam.my.SearchVO;
import co.yedam.my.mapper.MyMapper;
import co.yedam.member.mapper.MemberMapper;

public class MapperTest {
	public static void main(String[] args) {

		MemberMapper mapper = DataSource.getInstance().openSession(true).getMapper(MemberMapper.class);

		SearchVO search = new SearchVO();
		
		List<Qna> list = mapper.qnaList(search);
		for (Qna value : list) {
			System.out.println(value);
		}
	}

}
