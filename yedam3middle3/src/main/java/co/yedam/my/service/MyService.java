package co.yedam.my.service;

import java.util.List;

import co.yedam.member.Member;
import co.yedam.my.OrderList;
import co.yedam.my.Qna;

public interface MyService {
	// 1:1문의글 리스트.
	List<Qna> qnaList();
	
	// 문의글 등록.
	boolean addQna(Qna qna);
	
	// 구매품 리스트.
	List<OrderList> orderList();
	
	// 문의글 단건조회.
	Qna getQna(int inqNo);
	
	// 로그인 체크
	Member loginCheck(Member member);
	
	// 회원정보 수정
	Member modifyMember(Member member);
	
	// 회원탈퇴
	boolean removeMember(int mno);
	
	// 1:1문의글2
	


}
