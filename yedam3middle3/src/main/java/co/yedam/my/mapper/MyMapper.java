package co.yedam.my.mapper;

import java.util.List;

import co.yedam.member.Member;
import co.yedam.my.OrderList;
import co.yedam.my.Qna;

public interface MyMapper {
	
	// Qna 리스트.
	List<Qna> qnaList();
	// Qna 상세화면
	Qna selectQna(int inqNo);
	
	// 주문리스트
	List<OrderList> orderList();
	
	// 유저 로그인 체크
	List<Member> memberList();
		
	Member selectMember(Member member);
	
	// 회원 정보 수정
	Member updateMember(Member member);
	
	// 회원 탈퇴
	int deleteMember(int mno);

}
