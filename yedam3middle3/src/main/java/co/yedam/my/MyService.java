package co.yedam.my;

import java.util.List;

public interface MyService {
	// 1:1문의글 리스트 .
	List<Qna> qnaList();
	
	// 문의글 단건조회.
	Qna getQna(int inqNo);
	
	// 로그인 체크.
	Member loginCheck(Member member);

}
