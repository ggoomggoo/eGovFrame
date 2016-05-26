CREATE TABLE COMTECOPSEQ
(
	TABLE_NAME            VARCHAR2(20)  NOT NULL ,
	NEXT_ID               NUMBER(30)  NULL ,
CONSTRAINT  COMTECOPSEQ_PK PRIMARY KEY (TABLE_NAME)
);

CREATE TABLE VIBRATOR
(
	SN                    NUMBER(6)  NOT NULL ,
	UUID                  VARCHAR2(50)  NOT NULL ,
	TIMESTAMP             VARCHAR2(20)  NULL ,
CONSTRAINT  VIBRATOR_PK PRIMARY KEY (SN,UUID)
);



CREATE TABLE ACCELERATOR
(
	SN                    NUMBER(6)  NOT NULL ,
	UUID                  VARCHAR2(50)  NOT NULL ,
	XAXIS                 VARCHAR2(20)  NULL ,
	YAXIS                 VARCHAR2(20)  NULL ,
	ZAXIS                 VARCHAR2(20)  NULL ,
	TIMESTAMP             VARCHAR2(20)  NULL ,
	USEYN                 CHAR(1)  NULL ,
CONSTRAINT  ACCELERATOR_PK PRIMARY KEY (SN,UUID)
);



CREATE TABLE CONTACT_INFO
(
	ID                    CHAR(20)  NOT NULL ,
	NAME                  CHAR(60)  NULL ,
	TELNO                 CHAR(20)  NULL ,
	EMAILS                VARCHAR2(50)  NULL ,
	USEYN                 CHAR(1)  NULL ,
	UUID                  VARCHAR2(50)  NOT NULL ,
CONSTRAINT  CONTACT_INFO_PK PRIMARY KEY (UUID,ID)
);



CREATE TABLE FILE_DETAIL_INFO
(
	FILE_SN               NUMBER(20)  NOT NULL ,
	FILE_STRE_COURS       VARCHAR2(2000)  NULL ,
	STRE_FILE_NM          VARCHAR2(255)  NULL ,
	ORIGNL_FILE_NM        VARCHAR2(255)  NULL ,
	FILE_EXTSN            VARCHAR2(20)  NULL ,
	FILE_CN               BLOB  NULL ,
	FILE_SIZE             NUMBER(8)  NULL ,
CONSTRAINT  FILE_DETAIL_INFO_PK PRIMARY KEY (FILE_SN)
);



CREATE TABLE FILE_READER_WRITE
(
	SN                    NUMBER(6)  NOT NULL ,
	UUID                  VARCHAR2(50)  NOT NULL ,
	FILE_NM               VARCHAR2(255)  NULL ,
	FILE_TYPE             VARCHAR2(40)  NULL ,
	UPDT_DT               DATE  NULL ,
	USEYN                 CHAR(1)  NULL ,
	FILE_SN               NUMBER(20)  NOT NULL ,
	FILE_COURS            VARCHAR2(2000)  NULL ,
	FILE_SIZE             VARCHAR2(40)  NULL ,
CONSTRAINT  FILE_READER_WRITE_PK PRIMARY KEY (SN,UUID),
CONSTRAINT  FILE_READER_WRITE_FK1 FOREIGN KEY (FILE_SN) REFERENCES FILE_DETAIL_INFO(FILE_SN) ON DELETE CASCADE
);



CREATE TABLE MEDIA
(
	SN                    NUMBER(6)  NOT NULL ,
	UUID                  VARCHAR2(50)  NOT NULL ,
	MD_CODE               VARCHAR2(40)  NULL ,
	MD_SJ                 VARCHAR2(255)  NULL ,
	USEYN                 CHAR(1)  NULL ,
	REVIV_CO              VARCHAR2(40)  NULL ,
	FILE_SN               NUMBER(20)  NOT NULL ,
CONSTRAINT  MEDIA_PK PRIMARY KEY (SN, UUID),
CONSTRAINT  MEDIA_FK1 FOREIGN KEY (FILE_SN) REFERENCES FILE_DETAIL_INFO(FILE_SN) ON DELETE CASCADE
);




CREATE TABLE DEVICE
(
	SN                    NUMBER(6)  NOT NULL ,
	UUID                  VARCHAR2(50)  NOT NULL ,
	TELNO                 VARCHAR2(15)  NULL ,
	STRGE_INFO            VARCHAR2(40)  NULL ,
	NTWRK_DEVICE_INFO     VARCHAR2(20)  NULL ,
	PG_VER                VARCHAR2(40)  NULL ,
	DEVICE_NM             VARCHAR2(200)  NULL ,
	USEYN                 CHAR(1)  NULL ,
	OS                  VARCHAR2(15)  NULL ,
CONSTRAINT  DEVICE_PK PRIMARY KEY (SN,UUID)
);



CREATE TABLE INTERFACE_EGOV
(
	SN                    NUMBER(6)  NOT NULL ,
	UUID                  VARCHAR2(50)  NOT NULL ,
	EMAILS                VARCHAR2(50)  NULL ,
	USER_ID               VARCHAR2(20)  NULL ,
	USER_PW               VARCHAR2(2000)  NULL ,
CONSTRAINT  INTERFACE_EGOV_PK PRIMARY KEY (SN,UUID)
);



CREATE TABLE COMPASS
(
	SN                    NUMBER(6)  NOT NULL ,
	UUID                  VARCHAR2(50)  NOT NULL ,
	DRC                   VARCHAR2(40)  NULL ,
	ACCRCY                VARCHAR2(40)  NULL ,
	USEYN                 CHAR(1)  NULL ,
	TIMESTAMP             VARCHAR2(20)  NULL ,
CONSTRAINT  COMPASS_PK PRIMARY KEY (SN,UUID)
);



CREATE TABLE GPS
(
	SN                    NUMBER(6)  NOT NULL ,
	UUID                  VARCHAR2(50)  NOT NULL ,
	LA                    VARCHAR2(48)  NULL ,
	LO                    VARCHAR2(48)  NULL ,
	ACCRCY                VARCHAR2(10)  NULL ,
	USEYN                 CHAR(1)  NULL ,
CONSTRAINT  GPS_PK PRIMARY KEY (SN,UUID)
);



CREATE TABLE CAMERA
(
	SN                    NUMBER(6)  NOT NULL ,
	UUID                  VARCHAR2(50)  NOT NULL ,
	PHOTO_SJ              VARCHAR2(255)  NULL ,
	USEYN                 CHAR(1)  NULL ,
	FILE_SN               NUMBER(20)  NOT NULL ,
CONSTRAINT  CAMERA_PK PRIMARY KEY (SN,UUID),
CONSTRAINT  CAMERA_FK1 FOREIGN KEY (FILE_SN) REFERENCES FILE_DETAIL_INFO(FILE_SN) ON DELETE CASCADE
);



CREATE TABLE NETWORK
(
	SN                    NUMBER(6)  NOT NULL ,
	UUID                  VARCHAR2(50)  NOT NULL ,
	NTWRK_TYPE            VARCHAR2(20)  NULL ,
	USEYN                 CHAR(1)  NULL ,
CONSTRAINT  NETWORK_PK PRIMARY KEY (SN,UUID)
);



CREATE TABLE PKI
(
	SN                    NUMBER(6)  NOT NULL ,
	UUID                  VARCHAR2(50)  NOT NULL ,
	CRTFC_DT              DATE  NULL ,
	ENTRPRS_SE_CODE       CHAR(15)  NULL ,
	DN                    VARCHAR2(255)  NULL ,
CONSTRAINT  PKI_PK PRIMARY KEY (SN,UUID)
);



CREATE TABLE CODE
(
	CODE                  CHAR(3)  NOT NULL ,
	CODE_ID               VARCHAR2(6)  NOT NULL ,
	CODE_NM               VARCHAR2(60)  NULL ,
	CODE_DC               VARCHAR2(200)  NULL ,
CONSTRAINT  CODE_PK PRIMARY KEY (CODE,CODE_ID)
);


