package co.yedam.order;

import java.util.Date;

import lombok.Data;

@Data
public class Review {
	private int rNo;
	private int rStar;
	private String rContent;
	private Date rDate;
	private int mNo;
	private int pNo;
	private int lNo;
}
