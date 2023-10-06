DROP SEQUENCE seq_review;
DROP SEQUENCE seq_review_reply;
DROP TABLE tbl_review_reply;
DROP TABLE tbl_review;

CREATE SEQUENCE seq_review;
CREATE TABLE tbl_review (
  r_id NUMBER,
  r_title VARCHAR2(50) NOT NULL,
  r_content VARCHAR2(2000) NOT NULL,
  r_writer VARCHAR2(20) NOT NULL,
  r_readCount NUMBER DEFAULT 0,
  r_regDate DATE DEFAULT SYSDATE,
  r_modDate DATE DEFAULT SYSDATE,
  
  CONSTRAINT REVIEW_PK
    PRIMARY KEY (r_id)
);



SELECT r_id, r_title, r_content, r_writer, r_readCount, r_regDate, r_modDate FROM ( SELECT 
/*+ INDEX_DESC(tbl_review review_pk) */ rownum rn, r_id, r_title, r_content, r_writer, r_readCount, 
r_regDate, r_modDate FROM tbl_review WHERE rownum <= 3 * 10 ) WHERE rn > (3 - 1) * 10;












 SELECT r_id, r_r_id, r_r_title, r_r_content, r_r_writer, r_r_regDate, r_r_modDate FROM ( SELECT 
/*+ INDEX(tbl_review_reply review_reply_pk) */ rownum rn, r_id, r_r_id, r_r_title, r_r_content, 
r_r_writer, r_r_regDate, r_r_modDate FROM tbl_review_reply WHERE r_id = 298 AND r_r_id > 0 
AND rownum <= 1 * 10 ) WHERE rn > (1 - 1) * 10  ;




CREATE SEQUENCE seq_review_reply;
CREATE TABLE tbl_review_reply (
  r_id NUMBER(10),
  r_r_id NUMBER,
  r_r_title VARCHAR2(50) NOT NULL,
  r_r_content VARCHAR2(2000) NOT NULL,
  r_r_writer VARCHAR2(20) NOT NULL,
  r_r_regDate DATE DEFAULT SYSDATE,
  r_r_modDate DATE DEFAULT SYSDATE,
  
  CONSTRAINT REVIEW_REPLY_PK
    PRIMARY KEY (r_r_id),
  
  CONSTRAINT REVIEW_REPLY_FK
    FOREIGN KEY (r_id)
    REFERENCES tbl_review(r_id)
);