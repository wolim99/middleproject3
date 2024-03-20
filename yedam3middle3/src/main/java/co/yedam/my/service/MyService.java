package co.yedam.my.service;

import java.util.List;

import co.yedam.member.Member;
import co.yedam.my.OrderList;
import co.yedam.my.Qna;
import co.yedam.my.Reply;
import co.yedam.my.SearchVO;

public interface MyService {
	// 1:1문의글 리스트.
	List<Qna> qnaList(SearchVO search);
	int qnaTotalCnt(SearchVO search);
	// 문의글 등록.
	boolean addQna(Qna qna);
	
	// 구매품 리스트.
	List<OrderList> orderList();
	
	// 문의글 단건조회.
	Qna getQna(int inqNo);
	
	// 리뷰 작성상품 단건조회.
	Reply getReply(int listNo);
	
	// 로그인 체크
	Member loginCheck(Member member);
	
	// 회원정보 수정
	boolean modifyMember(Member member);
	
	// 회원탈퇴
	boolean removeMember(int mno);
	
	// 댓글 등록
	boolean addReply(Reply reply);


}
