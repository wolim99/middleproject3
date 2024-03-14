CREATE SEQUENCE pro_seq
    INCREMENT BY 1
    START WITH 1;
    
CREATE SEQUENCE mem_seq
    INCREMENT BY 1
    START WITH 1;
        
CREATE SEQUENCE ord_seq
    INCREMENT BY 1
    START WITH 1;
    
CREATE SEQUENCE list_seq
    INCREMENT BY 1
    START WITH 1;

CREATE SEQUENCE rev_seq
    INCREMENT BY 1
    START WITH 1;

CREATE SEQUENCE car_seq
    INCREMENT BY 1
    START WITH 1;
    
CREATE SEQUENCE inq_seq
    INCREMENT BY 1
    START WITH 1;    
    
ALTER TABLE products
MODIFY p_no DEFAULT pro_seq.nextval;
ALTER TABLE products
MODIFY p_date DEFAULT SYSDATE;

ALTER TABLE members
MODIFY m_no DEFAULT mem_seq.nextval;

ALTER TABLE orders
MODIFY o_no DEFAULT ord_seq.nextval;
ALTER TABLE orders
MODIFY o_date DEFAULT SYSDATE;

ALTER TABLE orderLists
MODIFY l_no DEFAULT list_seq.nextval;

ALTER TABLE reviews
MODIFY r_no DEFAULT rev_seq.nextval;
ALTER TABLE reviews
MODIFY r_date DEFAULT SYSDATE;

ALTER TABLE carts
MODIFY c_no DEFAULT car_seq.nextval;

ALTER TABLE inquiries
MODIFY q_no DEFAULT inq_seq.nextval;

ALTER TABLE products
MODIFY p_no DEFAULT pro_seq.nextval;

COMMIT;
