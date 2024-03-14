ALTER TABLE members RENAME COLUMN m_no TO mem_no;
ALTER TABLE members RENAME COLUMN m_id TO mem_id;
ALTER TABLE members RENAME COLUMN m_pw TO mem_pw;
ALTER TABLE members RENAME COLUMN m_name TO mem_name;
ALTER TABLE members RENAME COLUMN m_phone TO mem_phone;
ALTER TABLE members RENAME COLUMN m_mail TO mem_mail;
ALTER TABLE members RENAME COLUMN m_addr TO mem_addr;
ALTER TABLE members RENAME COLUMN m_point TO mem_point;

ALTER TABLE products RENAME COLUMN p_no TO prod_no;
ALTER TABLE products RENAME COLUMN p_name TO prod_name;
ALTER TABLE products RENAME COLUMN p_brand TO prod_brand;
ALTER TABLE products RENAME COLUMN p_price TO prod_price;
ALTER TABLE products RENAME COLUMN p_type TO prod_type;
ALTER TABLE products RENAME COLUMN p_sale TO prod_sale;
ALTER TABLE products RENAME COLUMN p_from TO prod_from;
ALTER TABLE products RENAME COLUMN p_date TO prod_date;
ALTER TABLE products RENAME COLUMN p_stock TO prod_stock;
ALTER TABLE products RENAME COLUMN p_ordcnt TO prod_ordcnt;
ALTER TABLE products RENAME COLUMN p_img TO prod_img;

ALTER TABLE inquiries RENAME COLUMN q_no TO inq_no;
ALTER TABLE inquiries RENAME COLUMN q_type TO inq_type;
ALTER TABLE inquiries RENAME COLUMN q_content TO inq_content;
ALTER TABLE inquiries RENAME COLUMN q_resp TO inq_resp;
ALTER TABLE inquiries RENAME COLUMN m_no TO mem_no;

ALTER TABLE carts RENAME COLUMN c_no TO cart_no;
ALTER TABLE carts RENAME COLUMN c_quant TO cart_quant;
ALTER TABLE carts RENAME COLUMN p_no TO prod_no;
ALTER TABLE carts RENAME COLUMN m_no TO mem_no;

ALTER TABLE orders RENAME COLUMN o_no TO ord_no;
ALTER TABLE orders RENAME COLUMN o_name TO ord_name;
ALTER TABLE orders RENAME COLUMN o_addr TO ord_addr;
ALTER TABLE orders RENAME COLUMN o_date TO ord_date;
ALTER TABLE orders RENAME COLUMN o_price TO ord_price;
ALTER TABLE orders RENAME COLUMN o_stat TO ord_stat;
ALTER TABLE orders RENAME COLUMN o_point TO ord_point;
ALTER TABLE orders RENAME COLUMN o_total TO ord_total;
ALTER TABLE orders RENAME COLUMN o_phone TO ord_phone;
ALTER TABLE orders RENAME COLUMN m_no TO mem_no;

ALTER TABLE orderlists RENAME COLUMN l_no TO list_no;
ALTER TABLE orderlists RENAME COLUMN l_quant TO list_quant;
ALTER TABLE orderlists RENAME COLUMN p_no TO prod_no;
ALTER TABLE orderlists RENAME COLUMN o_no TO ord_no;

ALTER TABLE reviews RENAME COLUMN r_no TO rev_no;
ALTER TABLE reviews RENAME COLUMN r_star TO rev_star;
ALTER TABLE reviews RENAME COLUMN r_content TO rev_content;
ALTER TABLE reviews RENAME COLUMN r_date TO rev_date;
ALTER TABLE reviews RENAME COLUMN p_no TO prod_no;
ALTER TABLE reviews RENAME COLUMN m_no TO mem_no;
ALTER TABLE reviews RENAME COLUMN l_no TO list_no;

commit;
