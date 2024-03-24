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
	public int getRevNo() {
		return revNo;
	}
	public void setRevNo(int revNo) {
		this.revNo = revNo;
	}
	public int getRevStar() {
		return revStar;
	}
	public void setRevStar(int revStar) {
		this.revStar = revStar;
	}
	public String getRevContent() {
		return revContent;
	}
	public void setRevContent(String revContent) {
		this.revContent = revContent;
	}
	public Date getRevDate() {
		return revDate;
	}
	public void setRevDate(Date revDate) {
		this.revDate = revDate;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public int getProdNo() {
		return prodNo;
	}
	public void setProdNo(int prodNo) {
		this.prodNo = prodNo;
	}
	public int getListNo() {
		return listNo;
	}
	public void setListNo(int listNo) {
		this.listNo = listNo;
	}
	
	
}
