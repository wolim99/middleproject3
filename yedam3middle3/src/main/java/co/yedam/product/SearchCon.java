package co.yedam.product;

import lombok.Data;

@Data
public class SearchCon {
	private String[] brand;
	private String[] type;
	private int price;
	private String keyword;
	private int ppage;
	private String sort;
	private String listtype;
	public String[] getBrand() {
		return brand;
	}
	public void setBrand(String[] brand) {
		this.brand = brand;
	}
	public String[] getType() {
		return type;
	}
	public void setType(String[] type) {
		this.type = type;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public int getPpage() {
		return ppage;
	}
	public void setPpage(int ppage) {
		this.ppage = ppage;
	}
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		this.sort = sort;
	}
	public String getListtype() {
		return listtype;
	}
	public void setListtype(String listtype) {
		this.listtype = listtype;
	}
	
}
