package co.yedam.my;

import lombok.Data;

@Data
public class PageDTO {
	private int page;
	private int starPage, endPage; // 현재 보여주는 페이지 기준으로 끝 페이지까지 보여준다. << 11 12 13 14 15 ... 20>>
	private boolean prev, next;
	
	public PageDTO(int page, int totalCnt) {
		this.page = page; // 현재 페이지.
		int realEnd = (int) Math.ceil(totalCnt / 5.0); // 실제 마지막 페이지.

		this.endPage = (int) Math.ceil(page / 10.0) * 10;
		this.starPage = this.endPage - 9;

		this.endPage = this.endPage > realEnd ? realEnd : this.endPage;
		
		this.prev = this.starPage > 1;
		this.next = this.endPage < realEnd;

	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getStarPage() {
		return starPage;
	}

	public void setStarPage(int starPage) {
		this.starPage = starPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}
	
}
