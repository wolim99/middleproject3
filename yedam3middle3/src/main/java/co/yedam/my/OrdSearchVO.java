package co.yedam.my;

import lombok.Data;

@Data
public class OrdSearchVO {
	private int opage;
	private String searchCondition;
	private String keyword;
}