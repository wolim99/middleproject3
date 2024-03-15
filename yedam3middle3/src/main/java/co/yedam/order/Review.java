package co.yedam.order;

import java.util.Date;

import lombok.Data;

@Data
public class Review {
	private int revNo;
	private int revStar;
	private String revContent;
	private Date revDate;
	private int memNo;
	private int prodNo;
	private int listNo;
}
