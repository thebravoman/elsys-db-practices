--------------------------------------------------------
--  File created - Петък-Април-04-2014   
--------------------------------------------------------
  DROP TABLE "ELSYS"."ARTICLE" cascade constraints;
  DROP TABLE "ELSYS"."CATEGORY" cascade constraints;
  DROP TABLE "ELSYS"."CATEGORY_TAG" cascade constraints;
  DROP TABLE "ELSYS"."TAG" cascade constraints;
  DROP TABLE "ELSYS"."USERS" cascade constraints;
  DROP TABLE "ELSYS"."USER_ARTICLE" cascade constraints;
--------------------------------------------------------
--  DDL for Table ARTICLE
--------------------------------------------------------

  CREATE TABLE "ELSYS"."ARTICLE" 
   (	"ID" NUMBER, 
	"PUBLISHED_ON" DATE, 
	"URL" VARCHAR2(20 BYTE), 
	"CREATED_ON" DATE, 
	"CATEGORY_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CATEGORY
--------------------------------------------------------

  CREATE TABLE "ELSYS"."CATEGORY" 
   (	"ID" NUMBER, 
	"NAME" VARCHAR2(20 BYTE), 
	"CREATED_BY" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CATEGORY_TAG
--------------------------------------------------------

  CREATE TABLE "ELSYS"."CATEGORY_TAG" 
   (	"C_ID" NUMBER, 
	"T_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TAG
--------------------------------------------------------

  CREATE TABLE "ELSYS"."TAG" 
   (	"ID" NUMBER, 
	"SECOND_PRIORITY" NUMBER, 
	"NAME" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "ELSYS"."USERS" 
   (	"PASSWORD" VARCHAR2(20 BYTE), 
	"PICTURE_URL" VARCHAR2(20 BYTE), 
	"ID" NUMBER, 
	"NAME" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USER_ARTICLE
--------------------------------------------------------

  CREATE TABLE "ELSYS"."USER_ARTICLE" 
   (	"U_ID" NUMBER, 
	"A_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

---------------------------------------------------
--   DATA FOR TABLE ARTICLE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ELSYS.ARTICLE
Insert into ELSYS.ARTICLE (ID,PUBLISHED_ON,URL,CREATED_ON,CATEGORY_ID) values (1,to_timestamp('12-APR-01 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'a',to_timestamp('12-APR-01 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),1);
Insert into ELSYS.ARTICLE (ID,PUBLISHED_ON,URL,CREATED_ON,CATEGORY_ID) values (2,to_timestamp('12-APR-01 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'s',to_timestamp('12-APR-01 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),1);

---------------------------------------------------
--   END DATA FOR TABLE ARTICLE
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE CATEGORY
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ELSYS.CATEGORY
Insert into ELSYS.CATEGORY (ID,NAME,CREATED_BY) values (1,'aaaaa','gosho');
Insert into ELSYS.CATEGORY (ID,NAME,CREATED_BY) values (2,'gggggg','pesho');

---------------------------------------------------
--   END DATA FOR TABLE CATEGORY
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE CATEGORY_TAG
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ELSYS.CATEGORY_TAG
Insert into ELSYS.CATEGORY_TAG (C_ID,T_ID) values (1,1);
Insert into ELSYS.CATEGORY_TAG (C_ID,T_ID) values (1,2);
Insert into ELSYS.CATEGORY_TAG (C_ID,T_ID) values (2,1);

---------------------------------------------------
--   END DATA FOR TABLE CATEGORY_TAG
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE TAG
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ELSYS.TAG
Insert into ELSYS.TAG (ID,SECOND_PRIORITY,NAME) values (1,1,'s');
Insert into ELSYS.TAG (ID,SECOND_PRIORITY,NAME) values (2,2,'x');

---------------------------------------------------
--   END DATA FOR TABLE TAG
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE USERS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ELSYS.USERS
Insert into ELSYS.USERS (PASSWORD,PICTURE_URL,ID,NAME) values ('asdasd','1111',1,'1a');
Insert into ELSYS.USERS (PASSWORD,PICTURE_URL,ID,NAME) values ('qqqqq','22222',2,'2b');

---------------------------------------------------
--   END DATA FOR TABLE USERS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE USER_ARTICLE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ELSYS.USER_ARTICLE
Insert into ELSYS.USER_ARTICLE (U_ID,A_ID) values (1,1);
Insert into ELSYS.USER_ARTICLE (U_ID,A_ID) values (1,2);
Insert into ELSYS.USER_ARTICLE (U_ID,A_ID) values (2,1);

---------------------------------------------------
--   END DATA FOR TABLE USER_ARTICLE
---------------------------------------------------













