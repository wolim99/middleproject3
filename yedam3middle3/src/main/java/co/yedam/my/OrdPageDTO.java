package co.yedam.my;

import lombok.Data;

@Data
public class OrdPageDTO {
	private int opage;
	private int starPage, endPage; // 현재 보여주는 페이지 기준으로 끝 페이지까지 보여준다. << 11 12 13 14 15 ... 20>>
	private boolean prev, next;
	
	public OrdPageDTO(int opage, int OrdtotalCnt) {
		this.opage = opage; // 현재 페이지.
		int realEnd = (int) Math.ceil(OrdtotalCnt / 5.0); // 실제 마지막 페이지.

		this.endPage = (int) Math.ceil(opage / 10.0) * 10;
		this.starPage = this.endPage - 9;

		this.endPage = this.endPage > realEnd ? realEnd : this.endPage;
		
		this.prev = this.starPage > 1;
		this.next = this.endPage < realEnd;

	}
}
