ALTER TABLE members RENAME COLUMN m_no TO mem_no;
ALTER TABLE members RENAME COLUMN m_id TO mem_id;
ALTER TABLE members RENAME COLUMN m_pw TO mem_pw;
ALTER TABLE members RENAME COLUMN m_name TO mem_name;
ALTER TABLE members RENAME COLUMN m_phone TO mem_phone;
ALTER TABLE members RENAME COLUMN m_mail TO mem_mail;
ALTER TABLE members RENAME COLUMN m_addr TO mem_addr;
ALTER TABLE members RENAME COLUMN m_point TO mem_point;

commit;
