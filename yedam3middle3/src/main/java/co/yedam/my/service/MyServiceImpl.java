package co.yedam.my.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.common.DataSource;
import co.yedam.member.Member;
import co.yedam.my.OrdSearchVO;
import co.yedam.my.OrderList;
import co.yedam.my.Qna;
import co.yedam.my.Reply;
import co.yedam.my.SearchVO;
import co.yedam.my.mapper.MyMapper;

// 업무로직을 담고 있는 프로세스.
// 데이터처리는 mapper 기능.
public class MyServiceImpl implements MyService {

	SqlSession session = DataSource.getInstance().openSession(true);
	MyMapper mapper = session.getMapper(MyMapper.class);
	
	@Override
	public List<Qna> qnaList() {
		return mapper.qnaList();
	}
	
	@Override
	public List<Qna> qnaSelectList(SearchVO search) {
		return mapper.qnaSelectList(search);
	}
	
	@Override
	public int qnaTotalCnt(SearchVO search) {
		return mapper.selectCount(search);
	}
	
	@Override
	public Qna getQna(int inqNo) {
		return mapper.selectQna(inqNo);
	}
	
	@Override
	public Reply getReply(int listNo) {
		return mapper.selectReply(listNo);
	}
	
	@Override
	public List<OrderList> orderList() {
		return mapper.orderList();
	}
	
	@Override
	public List<OrderList> ordSelectList(OrdSearchVO osearch) {
		return mapper.ordSelectList(osearch);
	}
	
	@Override
	public int ordTotalCnt(OrdSearchVO oSearch) {
		return mapper.selectOrdCount(oSearch);
	}
	
	@Override
	public boolean addQna(Qna qna) {
		return mapper.insertQna(qna) == 1;
	}
	
	@Override
	public Member loginCheck(Member member) {
		return mapper.selectMember(member);
	}
	
	@Override
	public boolean modifyMember(Member member) {
		return mapper.updateMember(member) == 1;
	}
	
	@Override
	public boolean removeMember(int mno) {
		return mapper.deleteMember(mno) == 1;
	}
	
	@Override
	public boolean addReply(Reply reply) {
		return mapper.insertReply(reply) == 1;
	}

}
