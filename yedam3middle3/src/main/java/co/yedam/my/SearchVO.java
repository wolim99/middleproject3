package co.yedam.my;

import lombok.Data;

@Data
public class SearchVO {
	private int page;
	private String searchCondition;
	private String keyword;
	
	// 댓글관련.
	private int inqNo;
	private int rpage;
}
