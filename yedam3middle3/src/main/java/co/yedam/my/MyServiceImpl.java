package co.yedam.my;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.common.DataSource;

// 업무로직을 담고 있는 프로세스.
// 데이터처리는 mapper 기능.
public class MyServiceImpl implements MyService {

	SqlSession session = DataSource.getInstance().openSession(true);
	MyMapper mapper = session.getMapper(MyMapper.class);
	List<Member> member = new ArrayList<>();
	
	@Override
	public List<Qna> qnaList() {
		return mapper.qnaList();
	}
	
	@Override
	public Qna getQna(int inqNo) {
		return mapper.selectQna(inqNo);
	}
	
	@Override
	public Member loginCheck(Member member) {
		return mapper.selectMember(member);
	}
}
