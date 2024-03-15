package co.yedam.order;

import java.util.Date;

import lombok.Data;

@Data
public class Order {
	private int ordNo;
	private String ordName;
	private String ordAddr;
	private Date ordDate;
	private String ordStat;
	private int ordPirce;
	private int ordPoint;
	private int ordTotal;
	private int memNo;
	private String ordPhone;
}
