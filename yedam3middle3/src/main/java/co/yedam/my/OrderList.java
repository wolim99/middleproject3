package co.yedam.my;

import java.util.Date;

import lombok.Data;

@Data
public class OrderList {
	private int listNo;
	private int listQuant;
	private int prodNo;
	private int ordNo;
	private Date ordDate;
	private int ordPrice;
	private String ordStat;
	private String prodName;
	private int ordTotal;
	private int memNo;
	
}
