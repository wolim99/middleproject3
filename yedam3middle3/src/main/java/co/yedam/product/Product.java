package co.yedam.product;

import java.util.Date;

import lombok.Data;

@Data
public class Product {
	private int prodNo;
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
	private String prodComp;
	public int getProdNo() {
		return prodNo;
	}
	public void setProdNo(int prodNo) {
		this.prodNo = prodNo;
	}
	public String getProdName() {
		return prodName;
	}
	public void setProdName(String prodName) {
		this.prodName = prodName;
	}
	public String getProdBrand() {
		return prodBrand;
	}
	public void setProdBrand(String prodBrand) {
		this.prodBrand = prodBrand;
	}
	public int getProdPrice() {
		return prodPrice;
	}
	public void setProdPrice(int prodPrice) {
		this.prodPrice = prodPrice;
	}
	public String getProdType() {
		return prodType;
	}
	public void setProdType(String prodType) {
		this.prodType = prodType;
	}
	public double getProdSale() {
		return prodSale;
	}
	public void setProdSale(double prodSale) {
		this.prodSale = prodSale;
	}
	public String getProdFrom() {
		return prodFrom;
	}
	public void setProdFrom(String prodFrom) {
		this.prodFrom = prodFrom;
	}
	public Date getProdDate() {
		return prodDate;
	}
	public void setProdDate(Date prodDate) {
		this.prodDate = prodDate;
	}
	public int getProdStock() {
		return prodStock;
	}
	public void setProdStock(int prodStock) {
		this.prodStock = prodStock;
	}
	public int getProdOrdCnt() {
		return prodOrdCnt;
	}
	public void setProdOrdCnt(int prodOrdCnt) {
		this.prodOrdCnt = prodOrdCnt;
	}
	public String getProdImg() {
		return prodImg;
	}
	public void setProdImg(String prodImg) {
		this.prodImg = prodImg;
	}
	public String getProdComp() {
		return prodComp;
	}
	public void setProdComp(String prodComp) {
		this.prodComp = prodComp;
	}
	
	
}
