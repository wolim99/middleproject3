package co.yedam.my;

import java.util.Date;

import lombok.Data;

@Data
public class Qna {

	private int inqNo;
	private String inqType;
	private String inqTitle;
	private String inqContent;
	private String inqResp;
	private Date inqDate;
	private int memNo;
	public int getInqNo() {
		return inqNo;
	}
	public void setInqNo(int inqNo) {
		this.inqNo = inqNo;
	}
	public String getInqType() {
		return inqType;
	}
	public void setInqType(String inqType) {
		this.inqType = inqType;
	}
	public String getInqTitle() {
		return inqTitle;
	}
	public void setInqTitle(String inqTitle) {
		this.inqTitle = inqTitle;
	}
	public String getInqContent() {
		return inqContent;
	}
	public void setInqContent(String inqContent) {
		this.inqContent = inqContent;
	}
	public String getInqResp() {
		return inqResp;
	}
	public void setInqResp(String inqResp) {
		this.inqResp = inqResp;
	}
	public Date getInqDate() {
		return inqDate;
	}
	public void setInqDate(Date inqDate) {
		this.inqDate = inqDate;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	
	
}
