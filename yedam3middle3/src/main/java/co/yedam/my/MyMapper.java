package co.yedam.my;

import java.util.List;

public interface MyMapper {
	
	// Qna 리스트.
	List<Qna> qnaList();
	// Qna 상세화면
	Qna selectQna(int inqNo);
	
	// 유저 로그인 체크
	List<Member> memberList();
	
	Member selectMember(Member member);

}
