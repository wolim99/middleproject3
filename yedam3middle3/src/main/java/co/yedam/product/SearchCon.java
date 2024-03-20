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
	
}
