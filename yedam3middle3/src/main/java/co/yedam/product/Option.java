package co.yedam.product;

import lombok.Data;

@Data
public class Option {
	private int prodNo;
	private String optText;
	public int getProdNo() {
		return prodNo;
	}
	public void setProdNo(int prodNo) {
		this.prodNo = prodNo;
	}
	public String getOptText() {
		return optText;
	}
	public void setOptText(String optText) {
		this.optText = optText;
	}
	
}
