CREATE TABLE products (
	p_no	number(10)		NOT NULL,
	p_name	varchar2(100)		NULL,
	p_brand	varchar2(100)		NULL,
	p_price	number(10)		NULL,
	p_type	varchar2(100)		NULL,
	p_sale	number(10)		NULL,
	p_from	varchar2(100)		NULL,
	p_date	date		NULL,
	p_stock	number(10)		NULL,
	p_ordCnt	number(10)		NULL,
	p_img	varchar2(100)		NULL
);
CREATE TABLE members (
	m_no	number(10)		NOT NULL,
	m_id	varchar2(100)		NULL,
	m_pw	varchar2(100)		NULL,
	m_name	varchar2(100)		NULL,
	m_phone	varchar2(100)		NULL,
	m_mail	varchar2(100)		NULL,
	m_addr	varchar2(500)		NULL,
	m_point	number(10)		NULL
);
CREATE TABLE orders (
	o_no	number(10)		NOT NULL,
	o_name	varchar2(100)		NULL,
	o_addr	varchar2(500)		NULL,
	o_date	date		NULL,
	o_price	number(10)		NULL,
	o_stat	varchar2(100)		NULL,
	o_point	number(10)		NULL,
	o_total	number(10)		NULL,
	o_phone	varchar2(100)		NULL,
	m_no	number(10)		NOT NULL
);
CREATE TABLE orderLists (
	l_no	number(10)		NOT NULL,
	l_quant	number(10)		NULL,
	p_no	number(10)		NOT NULL,
	o_no	number(10)		NOT NULL
);
CREATE TABLE carts (
	c_no	number(10)		NOT NULL,
	c_quant	number(10)		NULL,
	p_no	number(10)		NOT NULL,
	m_no	number(10)		NOT NULL
);
CREATE TABLE reviews (
	r_no	number(10)		NOT NULL,
	r_star	number(10)		NULL,
	r_content	varchar2(500)		NULL,
	r_date	date		NULL,
	p_no	number(10)		NOT NULL,
	m_no	number(10)		NOT NULL,
	l_no	number(10)		NOT NULL
);
CREATE TABLE inquiries (
	q_no	number(10)		NOT NULL,
	q_type	varchar2(100)		NULL,
	q_content	varchar2(1500)		NULL,
	q_resp	varchar2(1500)		NULL,
	m_no	number(10)		NOT NULL
);
-- produtcs 상품
ALTER TABLE products ADD CONSTRAINT PK_PRODUCTS PRIMARY KEY (p_no);
-- members 회원
ALTER TABLE members ADD CONSTRAINT PK_MEMBERS PRIMARY KEY (m_no);
-- orders 주문
ALTER TABLE orders ADD CONSTRAINT PK_ORDERS PRIMARY KEY (o_no);
ALTER TABLE orders ADD CONSTRAINT FK_ORDERS FOREIGN KEY (m_no) REFERENCES MEMBERS(m_no);
-- orderLists 주문내역
ALTER TABLE orderLists ADD CONSTRAINT PK_ORDERLISTS PRIMARY KEY (l_no);
ALTER TABLE orderLists ADD CONSTRAINT FK_ORDERSLISTS1 FOREIGN KEY (o_no) REFERENCES ORDERS(o_no);
ALTER TABLE orderLists ADD CONSTRAINT FK_ORDERSLISTS2 FOREIGN KEY (p_no) REFERENCES PRODUCTS(p_no);
-- carts 장바구니
ALTER TABLE carts ADD CONSTRAINT PK_CARTS PRIMARY KEY (c_no);
ALTER TABLE carts ADD CONSTRAINT FK_CARTS1 FOREIGN KEY (m_no) REFERENCES MEMBERS(m_no);
ALTER TABLE carts ADD CONSTRAINT FK_CARTS2 FOREIGN KEY (p_no) REFERENCES PRODUCTS(p_no);
-- reviews 리뷰
ALTER TABLE reviews ADD CONSTRAINT PK_REVIEWS PRIMARY KEY (r_no);
ALTER TABLE reviews ADD CONSTRAINT FK_REVIEWS1 FOREIGN KEY (m_no) REFERENCES MEMBERS(m_no);
ALTER TABLE reviews ADD CONSTRAINT FK_REVIEWS2 FOREIGN KEY (p_no) REFERENCES PRODUCTS(p_no);
ALTER TABLE reviews ADD CONSTRAINT FK_REVIEWS3 FOREIGN KEY (l_no) REFERENCES OLDERLISTS(l_no);
-- inquiries 문의
ALTER TABLE inquiries ADD CONSTRAINT PK_INQUIRIES PRIMARY KEY (q_no);
ALTER TABLE inquiries ADD CONSTRAINT FK_INQUIRIES FOREIGN KEY (m_no) REFERENCES MEMBERS(m_no);
