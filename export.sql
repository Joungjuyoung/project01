--------------------------------------------------------
--  파일이 생성됨 - 화요일-9월-19-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_REVIEW
--------------------------------------------------------

   CREATE SEQUENCE  "ID"."SEQ_REVIEW"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 301 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_REVIEW_REPLY
--------------------------------------------------------

   CREATE SEQUENCE  "ID"."SEQ_REVIEW_REPLY"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table TBL_REVIEW
--------------------------------------------------------

  CREATE TABLE "ID"."TBL_REVIEW" 
   (	"R_ID" NUMBER, 
	"R_TITLE" VARCHAR2(50 BYTE), 
	"R_CONTENT" VARCHAR2(2000 BYTE), 
	"R_WRITER" VARCHAR2(20 BYTE), 
	"R_READCOUNT" NUMBER DEFAULT 0, 
	"R_REGDATE" DATE DEFAULT SYSDATE, 
	"R_MODDATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into ID.TBL_REVIEW
SET DEFINE OFF;
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (1,'title1','content1','user1',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (2,'title2','content2','user2',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (3,'title3','content3','user3',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (4,'title4','content4','user4',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (5,'title5','content5','user5',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (6,'title6','content6','user6',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (7,'title7','content7','user7',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (8,'title8','content8','user8',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (9,'title9','content9','user9',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (10,'title10','content10','user10',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (11,'title11','content11','user11',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (12,'title12','content12','user12',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (13,'title13','content13','user13',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (14,'title14','content14','user14',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (15,'title15','content15','user15',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (16,'title16','content16','user16',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (17,'title17','content17','user17',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (18,'title18','content18','user18',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (19,'title19','content19','user19',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (20,'title20','content20','user20',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (21,'title21','content21','user21',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (22,'title22','content22','user22',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (23,'title23','content23','user23',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (24,'title24','content24','user24',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (25,'title25','content25','user25',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (26,'title26','content26','user26',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (27,'title27','content27','user27',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (28,'title28','content28','user28',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (29,'title29','content29','user29',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (30,'title30','content30','user30',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (31,'title31','content31','user31',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (32,'title32','content32','user32',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (33,'title33','content33','user33',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (34,'title34','content34','user34',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (35,'title35','content35','user35',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (36,'title36','content36','user36',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (37,'title37','content37','user37',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (38,'title38','content38','user38',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (39,'title39','content39','user39',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (40,'title40','content40','user40',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (41,'title41','content41','user41',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (42,'title42','content42','user42',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (43,'title43','content43','user43',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (44,'title44','content44','user44',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (45,'title45','content45','user45',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (46,'title46','content46','user46',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (47,'title47','content47','user47',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (48,'title48','content48','user48',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (49,'title49','content49','user49',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (50,'title50','content50','user50',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (51,'title51','content51','user51',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (52,'title52','content52','user52',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (53,'title53','content53','user53',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (54,'title54','content54','user54',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (55,'title55','content55','user55',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (56,'title56','content56','user56',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (57,'title57','content57','user57',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (58,'title58','content58','user58',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (59,'title59','content59','user59',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (60,'title60','content60','user60',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (61,'title61','content61','user61',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (62,'title62','content62','user62',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (63,'title63','content63','user63',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (64,'title64','content64','user64',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (65,'title65','content65','user65',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (66,'title66','content66','user66',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (67,'title67','content67','user67',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (68,'title68','content68','user68',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (69,'title69','content69','user69',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (70,'title70','content70','user70',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (71,'title71','content71','user71',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (72,'title72','content72','user72',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (73,'title73','content73','user73',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (74,'title74','content74','user74',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (75,'title75','content75','user75',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (76,'title76','content76','user76',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (77,'title77','content77','user77',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (78,'title78','content78','user78',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (79,'title79','content79','user79',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (80,'title80','content80','user80',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (81,'title81','content81','user81',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (82,'title82','content82','user82',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (83,'title83','content83','user83',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (84,'title84','content84','user84',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (85,'title85','content85','user85',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (86,'title86','content86','user86',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (87,'title87','content87','user87',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (88,'title88','content88','user88',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (89,'title89','content89','user89',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (90,'title90','content90','user90',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (91,'title91','content91','user91',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (92,'title92','content92','user92',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (93,'title93','content93','user93',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (94,'title94','content94','user94',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (95,'title95','content95','user95',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (96,'title96','content96','user96',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (97,'title97','content97','user97',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (98,'title98','content98','user98',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (99,'title99','content99','user99',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (100,'title100','content100','user100',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (101,'title101','content101','user101',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (102,'title102','content102','user102',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (103,'title103','content103','user103',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (104,'title104','content104','user104',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (105,'title105','content105','user105',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (106,'title106','content106','user106',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (107,'title107','content107','user107',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (108,'title108','content108','user108',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (109,'title109','content109','user109',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (110,'title110','content110','user110',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (111,'title111','content111','user111',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (112,'title112','content112','user112',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (113,'title113','content113','user113',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (114,'title114','content114','user114',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (115,'title115','content115','user115',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (116,'title116','content116','user116',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (117,'title117','content117','user117',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (118,'title118','content118','user118',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (119,'title119','content119','user119',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (120,'title120','content120','user120',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (121,'title121','content121','user121',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (122,'title122','content122','user122',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (123,'title123','content123','user123',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (124,'title124','content124','user124',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (125,'title125','content125','user125',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (126,'title126','content126','user126',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (127,'title127','content127','user127',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (128,'title128','content128','user128',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (129,'title129','content129','user129',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (130,'title130','content130','user130',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (131,'title131','content131','user131',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (132,'title132','content132','user132',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (133,'title133','content133','user133',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (134,'title134','content134','user134',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (135,'title135','content135','user135',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (136,'title136','content136','user136',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (137,'title137','content137','user137',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (138,'title138','content138','user138',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (139,'title139','content139','user139',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (140,'title140','content140','user140',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (141,'title141','content141','user141',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (142,'title142','content142','user142',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (143,'title143','content143','user143',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (144,'title144','content144','user144',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (145,'title145','content145','user145',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (146,'title146','content146','user146',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (147,'title147','content147','user147',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (148,'title148','content148','user148',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (149,'title149','content149','user149',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (150,'title150','content150','user150',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (151,'title151','content151','user151',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (152,'title152','content152','user152',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (153,'title153','content153','user153',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (154,'title154','content154','user154',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (155,'title155','content155','user155',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (156,'title156','content156','user156',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (157,'title157','content157','user157',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (158,'title158','content158','user158',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (159,'title159','content159','user159',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (160,'title160','content160','user160',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (161,'title161','content161','user161',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (162,'title162','content162','user162',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (163,'title163','content163','user163',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (164,'title164','content164','user164',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (165,'title165','content165','user165',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (166,'title166','content166','user166',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (167,'title167','content167','user167',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (168,'title168','content168','user168',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (169,'title169','content169','user169',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (170,'title170','content170','user170',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (171,'title171','content171','user171',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (172,'title172','content172','user172',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (173,'title173','content173','user173',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (174,'title174','content174','user174',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (175,'title175','content175','user175',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (176,'title176','content176','user176',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (177,'title177','content177','user177',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (178,'title178','content178','user178',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (179,'title179','content179','user179',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (180,'title180','content180','user180',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (181,'title181','content181','user181',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (182,'title182','content182','user182',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (183,'title183','content183','user183',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (184,'title184','content184','user184',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (185,'title185','content185','user185',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (186,'title186','content186','user186',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (187,'title187','content187','user187',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (188,'title188','content188','user188',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (189,'title189','content189','user189',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (190,'title190','content190','user190',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (191,'title191','content191','user191',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (192,'title192','content192','user192',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (193,'title193','content193','user193',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (194,'title194','content194','user194',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (195,'title195','content195','user195',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (196,'title196','content196','user196',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (197,'title197','content197','user197',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (198,'title198','content198','user198',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (199,'title199','content199','user199',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (200,'title200','content200','user200',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (201,'title201','content201','user201',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (202,'title202','content202','user202',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (203,'title203','content203','user203',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (204,'title204','content204','user204',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (205,'title205','content205','user205',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (206,'title206','content206','user206',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (207,'title207','content207','user207',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (208,'title208','content208','user208',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (209,'title209','content209','user209',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (210,'title210','content210','user210',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (211,'title211','content211','user211',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (212,'title212','content212','user212',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (213,'title213','content213','user213',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (214,'title214','content214','user214',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (215,'title215','content215','user215',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (216,'title216','content216','user216',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (217,'title217','content217','user217',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (218,'title218','content218','user218',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (219,'title219','content219','user219',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (220,'title220','content220','user220',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (221,'title221','content221','user221',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (222,'title222','content222','user222',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (223,'title223','content223','user223',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (224,'title224','content224','user224',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (225,'title225','content225','user225',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (226,'title226','content226','user226',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (227,'title227','content227','user227',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (228,'title228','content228','user228',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (229,'title229','content229','user229',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (230,'title230','content230','user230',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (231,'title231','content231','user231',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (232,'title232','content232','user232',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (233,'title233','content233','user233',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (234,'title234','content234','user234',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (235,'title235','content235','user235',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (236,'title236','content236','user236',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (237,'title237','content237','user237',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (238,'title238','content238','user238',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (239,'title239','content239','user239',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (240,'title240','content240','user240',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (241,'title241','content241','user241',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (242,'title242','content242','user242',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (243,'title243','content243','user243',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (244,'title244','content244','user244',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (245,'title245','content245','user245',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (246,'title246','content246','user246',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (247,'title247','content247','user247',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (248,'title248','content248','user248',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (249,'title249','content249','user249',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (250,'title250','content250','user250',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (251,'title251','content251','user251',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (252,'title252','content252','user252',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (253,'title253','content253','user253',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (254,'title254','content254','user254',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (255,'title255','content255','user255',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (256,'title256','content256','user256',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (257,'title257','content257','user257',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (258,'title258','content258','user258',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (259,'title259','content259','user259',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (260,'title260','content260','user260',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (261,'title261','content261','user261',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (262,'title262','content262','user262',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (263,'title263','content263','user263',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (264,'title264','content264','user264',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (265,'title265','content265','user265',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (266,'title266','content266','user266',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (267,'title267','content267','user267',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (268,'title268','content268','user268',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (269,'title269','content269','user269',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (270,'title270','content270','user270',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (271,'title271','content271','user271',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (272,'title272','content272','user272',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (273,'title273','content273','user273',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (274,'title274','content274','user274',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (275,'title275','content275','user275',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (276,'title276','content276','user276',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (277,'title277','content277','user277',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (278,'title278','content278','user278',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (279,'title279','content279','user279',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (280,'title280','content280','user280',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (281,'title281','content281','user281',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (282,'title282','content282','user282',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (283,'title283','content283','user283',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (284,'title284','content284','user284',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (285,'title285','content285','user285',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (286,'title286','content286','user286',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (287,'title287','content287','user287',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (288,'title288','content288','user288',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (289,'title289','content289','user289',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (290,'title290','content290','user290',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (291,'title291','content291','user291',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (292,'title292','content292','user292',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (293,'title293','content293','user293',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (294,'title294','content294','user294',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (295,'title295','content295','user295',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (296,'title296','content296','user296',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (297,'title297','content297','user297',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (298,'title298','content298','user298',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (299,'title299','content299','user299',0,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
Insert into ID.TBL_REVIEW (R_ID,R_TITLE,R_CONTENT,R_WRITER,R_READCOUNT,R_REGDATE,R_MODDATE) values (300,'title300','content300','user300',2,to_date('2023/09/15','YYYY/MM/DD'),to_date('2023/09/15','YYYY/MM/DD'));
--------------------------------------------------------
--  DDL for Index REVIEW_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ID"."REVIEW_PK" ON "ID"."TBL_REVIEW" ("R_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table TBL_REVIEW
--------------------------------------------------------

  ALTER TABLE "ID"."TBL_REVIEW" ADD CONSTRAINT "REVIEW_PK" PRIMARY KEY ("R_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ID"."TBL_REVIEW" MODIFY ("R_WRITER" NOT NULL ENABLE);
  ALTER TABLE "ID"."TBL_REVIEW" MODIFY ("R_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "ID"."TBL_REVIEW" MODIFY ("R_TITLE" NOT NULL ENABLE);
