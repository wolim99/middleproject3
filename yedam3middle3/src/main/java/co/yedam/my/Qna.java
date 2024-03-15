package co.yedam.my;

import java.util.Date;

import lombok.Data;

@Data
public class Qna {

	private int inqNo;
	private String inqType;
	private String inqTitle;
	private String inqContent;
	private String inqResp;
	private Date inqDate;
	private int memNo;
	
}
