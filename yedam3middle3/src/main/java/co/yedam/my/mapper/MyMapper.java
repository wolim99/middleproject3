package co.yedam.my.mapper;

import java.util.List;

import co.yedam.member.Member;
import co.yedam.my.OrderList;
import co.yedam.my.Qna;
import co.yedam.my.Reply;
import co.yedam.my.SearchVO;

public interface MyMapper {
	
	// Qna 리스트.
	List<Qna> qnaList(SearchVO search);
	int getTotalCnt(SearchVO search);
	// Qna 상세화면
	Qna selectQna(int inqNo);
	// Qna 작성
	int insertQna(Qna qna);
	
	// 주문리스트
	List<OrderList> orderList();
	
	// 리뷰작성용 주문리스트 상세화면
	Reply selectReply(int listNo);
	
	// 유저 로그인 체크
	List<Member> memberList();
		
	Member selectMember(Member member);
	
	// 회원 정보 수정
	int updateMember(Member member);
	
	// 회원 탈퇴
	int deleteMember(int mno);
	
	// 댓글 작성
	int insertReply(Reply reply);

}
