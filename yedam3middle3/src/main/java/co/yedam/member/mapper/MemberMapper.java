package co.yedam.member.mapper;


import java.util.List;

import co.yedam.member.Member;

public interface MemberMapper {
	
	int insertMember(Member member);

	Member selectMember(Member member);
}
