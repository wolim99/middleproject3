package co.yedam.member;

import lombok.Data;

@Data
public class Cart {
	private int cartNo; // 장바구니 번호
	private int cartQuant; // 수량
	private String memNo; // 사용자 번호
	private String memName; // 사용자 이름
	private int prodNo; // 제품 번호
	private String prodName; // 제품 이름
	private int prodPrice; // 제품 단가 가격
	private int money; // 금액
}