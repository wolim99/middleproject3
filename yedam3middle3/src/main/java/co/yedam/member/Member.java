package co.yedam.member;

import lombok.Data;

@Data
public class Member {
	private int memNo;
	private String memId;
	private String memPw;
	private String memName;
	private String memPhone;
	private String memMail;
	private String memAddr;
	private int memPoint;
}
