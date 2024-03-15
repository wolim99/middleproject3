package co.yedam.member.service;

import java.util.List;

import co.yedam.member.Member;

public interface MemberService {
	Member loginCheck(Member member);
	
	boolean insertMember(Member member);
}
