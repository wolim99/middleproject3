package co.yedam.order;

import java.util.Date;

import lombok.Data;

@Data
public class Product {
	private int prodNo;
	private String prodName;
	private String prodBrand;
	private int prodPrice;
	private String prodType;
	private String prodImg;
	private int prodSale;
	private String prodFrom;
	private Date prodDate;
	private int prodStock;
	private int prodOrdnt;	
	
	
}
