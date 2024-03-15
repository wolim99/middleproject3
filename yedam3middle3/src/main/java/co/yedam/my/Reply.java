package co.yedam.my;

import java.util.Date;

import lombok.Data;

@Data
public class Reply {
	private int revNO;
	private int revStar;
	private String revContent;
	private Date revDate;
	private int prodNo;
	private int memNo;
	private int listNo;
}
