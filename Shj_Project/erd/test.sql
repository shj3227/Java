
/* Drop Tables */

DROP TABLE attachment CASCADE CONSTRAINTS;
DROP TABLE Comunity_Post CASCADE CONSTRAINTS;
DROP TABLE Large_category CASCADE CONSTRAINTS;
DROP TABLE Medium_category CASCADE CONSTRAINTS;
DROP TABLE member_Table CASCADE CONSTRAINTS;
DROP TABLE Message CASCADE CONSTRAINTS;
DROP TABLE Notice CASCADE CONSTRAINTS;
DROP TABLE Post CASCADE CONSTRAINTS;
DROP TABLE Post_comment CASCADE CONSTRAINTS;
DROP TABLE QnA CASCADE CONSTRAINTS;
DROP TABLE QnA_comment CASCADE CONSTRAINTS;
DROP TABLE Scrap CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE attachment
(
	A_postnum number NOT NULL,
	A_upname varchar2(50) NOT NULL,
	A_savename varchar2(50) NOT NULL,
	A_seqnum number NOT NULL,
	PRIMARY KEY (A_postnum)
);


CREATE TABLE Comunity_Post
(
	P_seqnum number NOT NULL,
	P_title varchar2(100) NOT NULL,
	CO_id varchar2(40) NOT NULL,
	CO_regdate date NOT NULL,
	CO_cnt_read number NOT NULL,
	CO_cnt_like number NOT NULL,
	CO_cnt_comment number NOT NULL,
	CO_contents clob NOT NULL,
	CO_cnt_report number NOT NULL,
	CO_C_code number NOT NULL,
	PRIMARY KEY (P_seqnum)
);


CREATE TABLE Large_category
(
	L_code number NOT NULL,
	L_Cname varchar2(20) NOT NULL,
	PRIMARY KEY (L_code)
);


CREATE TABLE Medium_category
(
	M_code number NOT NULL,
	M_Cname varchar2(20) NOT NULL
);


CREATE TABLE member_Table
(
	Id varchar2(40) NOT NULL,
	Pw varchar2(50) NOT NULL,
	Name varchar2(20) NOT NULL,
	Nickname varchar2(40) NOT NULL,
	Email varchar2(80) NOT NULL,
	Phonenum varchar2(50) NOT NULL,
	zipcode varchar2(20) NOT NULL,
	address clob NOT NULL,
	grade number NOT NULL,
	PRIMARY KEY (Id)
);


CREATE TABLE Message
(
	M_seqnum number NOT NULL,
	M_sendId urowid(40) NOT NULL,
	M_receiveId varchar2(40) NOT NULL,
	M_sendDate date NOT NULL,
	M_readDate date NOT NULL,
	M_state number NOT NULL,
	PRIMARY KEY (M_seqnum)
);


CREATE TABLE Notice
(
	N_seqnum number NOT NULL,
	N_title varchar2(100) NOT NULL,
	N_contents clob NOT NULL,
	N_regdate date NOT NULL,
	N_cnt_read number NOT NULL,
	PRIMARY KEY (N_seqnum)
);


CREATE TABLE Post
(
	P_seqnum number NOT NULL,
	P_section varchar2(20) NOT NULL,
	P_title varchar2(50) NOT NULL,
	P_id varchar2(20) NOT NULL,
	P_regdate date NOT NULL,
	P_cnt_read number NOT NULL,
	P_cnt_like number NOT NULL,
	P_contents clob NOT NULL,
	P_category varchar2(20) NOT NULL,
	PRIMARY KEY (P_seqnum)
);


CREATE TABLE Post_comment
(
	C_code number NOT NULL,
	C_id varchar2(40) NOT NULL,
	C_contents clob NOT NULL,
	C_regdate date NOT NULL,
	PRIMARY KEY (C_code)
);


CREATE TABLE QnA
(
	QnA_seqnum number NOT NULL,
	QnA_Q_id varchar2(100),
	QnA_regdate date NOT NULL,
	QnA_contents date NOT NULL,
	QnA_A_code number NOT NULL,
	PRIMARY KEY (QnA_seqnum)
);


CREATE TABLE QnA_comment
(
	QnA_code number NOT NULL,
	QnA_id varchar2(40) NOT NULL,
	QnA_contents clob NOT NULL,
	QnA_regdate date NOT NULL,
	PRIMARY KEY (QnA_code)
);


CREATE TABLE Scrap
(
	S_id varchar2(40) NOT NULL,
	S_category varchar2(20) NOT NULL,
	S_post varchar2(100) NOT NULL,
	S_regdate date NOT NULL,
	PRIMARY KEY (S_id)
);



select * from member_table;
DELETE FROM member_table WHERE id='b';

UPDATE member_Table SET email='shj3227@naver.com' WHERE id='shj3227';


select * from Medium_category;
select * from Large_category;
delete from Medium_category where rownum = 10;
select i.l_code from large_category i where i.l_cname = '컴퓨?��';
select m.m_cname from Medium_category m 
where (select i.l_code from large_category i where i.l_cname = '컴퓨?��') =  m.m_code;
--?��?��게해?�� ?��?��.
select m_cname from Medium_category where m_code = 1;
select * from Medium_category where m_cname = '그래?��카드';
select l.l_code from Large_category l where l.l_code = (select * from Medium_category m where m.m_cname = '그래?��카드') ;
INSERT INTO Large_category(l_code, l_cname) VALUES(11, '여행/공연/e쿠폰');
select * from Large_category;
Alter Table Large_category Modify(l_cname varchar2(100));

INSERT INTO Medium_category(m_code, m_cname) VALUES(11, '기타 상품권');
select * from Medium_category;
Alter Table Medium_category Modify(m_cname varchar2(100));

create SEQUENCE post_seq;

select * from post;

CREATE OR REPLACE VIEW listbymcate AS

   select * from post
   where p_category ='그래?��카드';
   
select * from listbymcate;
select * from post;
SELECT * FROM (SELECT ROWNUM AS RNUM, T.* FROM (SELECT * FROM post ORDER BY p_seqnum DESC) T)WHERE RNUM >= 1 AND RNUM < 3;
CREATE OR REPLACE VIEW listByCate AS select * from post where p_category = '�ĵ�' and p_contents like '%3%';
CREATE OR REPLACE VIEW listByCate AS select * from post where p_category = '하의' and p_contents like '%뷁%' 
or p_title like '%asdf%';
SELECT * FROM post where p_seqnum = 103;
select * from listByCate;
SELECT * FROM (SELECT ROWNUM AS RNUM, T.* FROM (SELECT * FROM listByCate ORDER BY p_seqnum DESC) T)WHERE RNUM >= 1 AND RNUM < 3;

CREATE OR REPLACE VIEW listByCate AS select * from post where p_category = '그래?��카드';
CREATE OR REPLACE VIEW listByCate AS select * from post where p_category = '그래?��카드';
SELECT * FROM (SELECT ROWNUM AS RNUM, T.* FROM (SELECT * FROM listByCate ORDER BY p_seqnum DESC) T)WHERE RNUM >= 0 AND RNUM < 3;
select * from listByCate where p_seqnum = 21 and p_id = 'shj3227';
SELECT * FROM (SELECT ROWNUM AS RNUM, T.* FROM (SELECT * FROM listByCate 
where p_contents like '%?��%' ORDER BY p_seqnum DESC) T)WHERE RNUM >= 0 AND RNUM < 2;
SELECT ROWNUM AS RNUM, T.* FROM (SELECT * FROM listByCate where p_contents like '%br%' ORDER BY p_seqnum DESC) t;
SELECT * FROM listByCate where p_contents like '%asdf%' ORDER BY p_seqnum DESC;
--post_seq.nextval
SELECT COUNT(*) FROM post;
commit;

SELECT * FROM (SELECT ROWNUM AS RNUM, T.* FROM (SELECT * FROM listByCate where p_contents like '%?��%' ORDER BY p_seqnum DESC) T) WHERE RNUM >= 0 AND RNUM < 3;