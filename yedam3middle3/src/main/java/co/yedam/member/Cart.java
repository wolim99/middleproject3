package co.yedam.member;

import lombok.Data;

@Data
public class Cart {
	private String option; // 옵션
	private int inputcut; // 거름망
	private String cartNo; // 장바구니 번호
	private int cartQuant; // 수량
	private int memNo; // 사용자 번호
	private String memName; // 사용자 이름
	private int prodNo; // 제품 번호
	private String prodName; // 제품 이름
	private int prodPrice; // 제품 단가 가격
	private String prodImg; // 제품 사진
	private int money; // 제품 총 가격
	private double prodSale; // 세일
	private String memId;
	public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
	}
	public int getInputcut() {
		return inputcut;
	}
	public void setInputcut(int inputcut) {
		this.inputcut = inputcut;
	}
	public String getCartNo() {
		return cartNo;
	}
	public void setCartNo(String cartNo) {
		this.cartNo = cartNo;
	}
	public int getCartQuant() {
		return cartQuant;
	}
	public void setCartQuant(int cartQuant) {
		this.cartQuant = cartQuant;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public int getProdNo() {
		return prodNo;
	}
	public void setProdNo(int prodNo) {
		this.prodNo = prodNo;
	}
	public String getProdName() {
		return prodName;
	}
	public void setProdName(String prodName) {
		this.prodName = prodName;
	}
	public int getProdPrice() {
		return prodPrice;
	}
	public void setProdPrice(int prodPrice) {
		this.prodPrice = prodPrice;
	}
	public String getProdImg() {
		return prodImg;
	}
	public void setProdImg(String prodImg) {
		this.prodImg = prodImg;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	
	
}
