package co.yedam.product;

import java.util.Date;

import lombok.Data;

@Data
public class Product {
	private String prodNo;
	private String prodName;
	private String prodBrand;
	private int prodPrice;
	private String prodType;
	private double prodSale;
	private String prodFrom;
	private Date prodDate;
	private int prodStock;
	private int prodOrdCnt;
	private String prodImg;
	
}
