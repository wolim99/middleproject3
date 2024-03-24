package co.yedam.my;

import lombok.Data;

@Data
public class SearchVO {
	private int qpage;
	private int memNo;
	public int getQpage() {
		return qpage;
	}
	public void setQpage(int qpage) {
		this.qpage = qpage;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	
	
}
