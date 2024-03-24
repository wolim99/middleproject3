package co.yedam.my;

import java.util.Date;

import lombok.Data;

@Data
public class Reply {
	private int revNO;
	private int revStar;
	private String revContent;
	private Date revDate;
	private int prodNo;
	private int memNo;
	private int listNo;
	public int getRevNO() {
		return revNO;
	}
	public void setRevNO(int revNO) {
		this.revNO = revNO;
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
	public int getProdNo() {
		return prodNo;
	}
	public void setProdNo(int prodNo) {
		this.prodNo = prodNo;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public int getListNo() {
		return listNo;
	}
	public void setListNo(int listNo) {
		this.listNo = listNo;
	}
	
}
