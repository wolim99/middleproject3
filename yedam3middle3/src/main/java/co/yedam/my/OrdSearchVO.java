package co.yedam.my;

import lombok.Data;

@Data
public class OrdSearchVO {
	private int opage;
	private int memNo;
	public int getOpage() {
		return opage;
	}
	public void setOpage(int opage) {
		this.opage = opage;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	

}
