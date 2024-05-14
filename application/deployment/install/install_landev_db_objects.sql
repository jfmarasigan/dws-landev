prompt --application/deployment/install/install_landev_db_objects
begin
--   Manifest
--     INSTALL: INSTALL-Landev db objects
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.4'
,p_default_workspace_id=>91148611334986183999
,p_default_application_id=>211981
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WRKSPCEJDM'
);
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(108932321479911065002)
,p_install_id=>wwv_flow_imp.id(108924166588914008054)
,p_name=>'Landev db objects'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE SEQUENCE  "LANDEV_APPROVER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;',
'',
'   CREATE SEQUENCE  "LANDEV_BOX_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;',
'',
'   CREATE SEQUENCE  "LANDEV_BOX_TYPE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;',
'',
'   CREATE SEQUENCE  "LANDEV_BRR_FORM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;',
'',
'   CREATE SEQUENCE  "LANDEV_CLIENTS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;',
'',
'   CREATE SEQUENCE  "LANDEV_LOCATION_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;',
'',
'   CREATE SEQUENCE  "LANDEV_LOCATION_TRACKER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;',
'',
'   CREATE SEQUENCE  "LANDEV_RC_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;',
'',
'   CREATE SEQUENCE  "LANDEV_REJECTION_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;',
'',
'   CREATE SEQUENCE  "LANDEV_SIZE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;',
'',
'   CREATE SEQUENCE  "LANDEV_TRANSMITTAL_FORM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;',
'',
'   CREATE SEQUENCE  "LANDEV_WIN_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;',
'',
' ',
' ',
'  CREATE TABLE "LANDEV_USERS" ',
'   (	"USER_ID" VARCHAR2(10 CHAR), ',
'	"USER_NAME" VARCHAR2(100 CHAR) NOT NULL ENABLE, ',
'	"PASSWORD" VARCHAR2(30 CHAR) NOT NULL ENABLE, ',
'	"EMAIL_ADDRESS" VARCHAR2(40 CHAR) NOT NULL ENABLE, ',
'	"IS_ACTIVE" VARCHAR2(1 CHAR) DEFAULT ''Y'' NOT NULL ENABLE, ',
'	"CREATE_USER" VARCHAR2(10 CHAR) NOT NULL ENABLE, ',
'	"CREATE_DATE" DATE NOT NULL ENABLE, ',
'	"UPDATE_USER" VARCHAR2(10 CHAR), ',
'	"UPDATE_DATE" DATE, ',
'	"USER_TYPE_ID" NUMBER, ',
'	"USER_IMAGE" BLOB, ',
'	 CONSTRAINT "LANDEV_USERS_PK" PRIMARY KEY ("USER_ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "LANDEV_APPROVER" ',
'   (	"APPROVER_ID" NUMBER DEFAULT ON NULL "LANDEV_APPROVER_SEQ"."NEXTVAL" NOT NULL ENABLE, ',
'	"APPROVER_NAME" VARCHAR2(30 CHAR) NOT NULL ENABLE, ',
'	"CREATE_USER" VARCHAR2(10 CHAR) NOT NULL ENABLE, ',
'	"CREATE_DATE" DATE NOT NULL ENABLE, ',
'	"UPDATE_USER" VARCHAR2(10 CHAR), ',
'	"UPDATE_DATE" DATE, ',
'	 CONSTRAINT "LANDEV_APPROVER_APPROVER_ID_PK" PRIMARY KEY ("APPROVER_ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "LANDEV_BOX" ',
'   (	"BOX_ID" NUMBER NOT NULL ENABLE, ',
'	"TRANS_FORM_ID" NUMBER NOT NULL ENABLE, ',
'	"BOX_TYPE_ID" NUMBER NOT NULL ENABLE, ',
'	"REJECTION_ID" NUMBER, ',
'	"SIZE_ID" NUMBER, ',
'	"BOX_NUMBER" NUMBER NOT NULL ENABLE, ',
'	"DESTRUCTION_DATE" DATE, ',
'	"IS_APPROVE" VARCHAR2(1 CHAR) DEFAULT ON NULL ''N'' NOT NULL ENABLE, ',
'	"CREATE_USER" VARCHAR2(10 CHAR) NOT NULL ENABLE, ',
'	"CREATE_DATE" DATE NOT NULL ENABLE, ',
'	"UPDATE_USER" VARCHAR2(10 CHAR), ',
'	"UPDATE_DATE" DATE, ',
'	 CONSTRAINT "LANDEV_BOX_IS_APPROVE" CHECK (is_approve in (''Y'',''N'')) ENABLE, ',
'	 CONSTRAINT "LANDEV_BOX_BOX_ID_PK" PRIMARY KEY ("BOX_ID", "TRANS_FORM_ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "LANDEV_BOX_TYPE" ',
'   (	"BOX_TYPE_ID" NUMBER DEFAULT ON NULL "LANDEV_BOX_TYPE_SEQ"."NEXTVAL" NOT NULL ENABLE, ',
'	"BOX_NAME" VARCHAR2(30 CHAR) NOT NULL ENABLE, ',
'	"CREATE_USER" VARCHAR2(10 CHAR) NOT NULL ENABLE, ',
'	"CREATE_DATE" DATE NOT NULL ENABLE, ',
'	"UPDATE_USER" VARCHAR2(10 CHAR), ',
'	"UPDATE_DATE" DATE, ',
'	 CONSTRAINT "LANDEV_BOX_TYPE_BOX_TYPE_ID_PK" PRIMARY KEY ("BOX_TYPE_ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "LANDEV_BRR_FORM" ',
'   (	"BRR_FORM_ID" NUMBER DEFAULT ON NULL "LANDEV_BRR_FORM_SEQ"."NEXTVAL" NOT NULL ENABLE, ',
'	"CLIENT_CODE" NUMBER NOT NULL ENABLE, ',
'	"RC_CODE" NUMBER NOT NULL ENABLE, ',
'	"APPROVER_ID" NUMBER NOT NULL ENABLE, ',
'	"REQUEST_DATE" DATE NOT NULL ENABLE, ',
'	"RETRIEVAL_DATE" DATE NOT NULL ENABLE, ',
'	"RELEASED_STATUS" VARCHAR2(10 CHAR), ',
'	"RELEASE_BY" VARCHAR2(10 CHAR), ',
'	"IS_RETURNED" VARCHAR2(1 CHAR), ',
'	"RETURN_DATE" DATE, ',
'	"BRR_STATUS" VARCHAR2(1 CHAR) NOT NULL ENABLE, ',
'	"CREATE_USER" VARCHAR2(10 CHAR) NOT NULL ENABLE, ',
'	"CREATE_DATE" DATE NOT NULL ENABLE, ',
'	"UPDATE_USER" VARCHAR2(10 CHAR), ',
'	"UPDATE_DATE" DATE, ',
'	 CONSTRAINT "LANDEV_BRR_FORM_IS_RETURNED" CHECK (is_returned in (''Y'',''N'')) ENABLE, ',
'	 CONSTRAINT "LANDEV_BRR_FORM_BRR_FORM_ID_PK" PRIMARY KEY ("BRR_FORM_ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "LANDEV_BRR_TRACKING" ',
'   (	"WIN_ID" NUMBER NOT NULL ENABLE, ',
'	"BRR_FORM_ID" NUMBER NOT NULL ENABLE, ',
'	"CREATE_USER" VARCHAR2(10 CHAR) NOT NULL ENABLE, ',
'	"CREATE_DATE" DATE NOT NULL ENABLE, ',
'	"UPDATE_USER" VARCHAR2(10 CHAR), ',
'	"UPDATE_DATE" DATE, ',
'	 CONSTRAINT "LANDEV_BRR_TRACKING_ID_PK" PRIMARY KEY ("WIN_ID", "BRR_FORM_ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "LANDEV_CLIENTS" ',
'   (	"CLIENT_CODE" NUMBER DEFAULT ON NULL "LANDEV_CLIENTS_SEQ"."NEXTVAL" NOT NULL ENABLE, ',
'	"CLIENT_NAME" VARCHAR2(50 CHAR) NOT NULL ENABLE, ',
'	"CREATE_USER" VARCHAR2(10 CHAR) NOT NULL ENABLE, ',
'	"CREATE_DATE" DATE NOT NULL ENABLE, ',
'	"UPDATE_USER" VARCHAR2(10 CHAR), ',
'	"UPDATE_DATE" DATE, ',
'	 CONSTRAINT "LANDEV_CLIENTS_CLIENT_CODE_PK" PRIMARY KEY ("CLIENT_CODE")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "LANDEV_ERR_LOGS" ',
'   (	"ERR_MSG" VARCHAR2(4000 CHAR) NOT NULL ENABLE, ',
'	"LOG_DATE" DATE NOT NULL ENABLE',
'   ) ;',
'',
'  CREATE TABLE "LANDEV_GROUP_MODULE_ACCESS" ',
'   (	"GRP_MOD_ACC_ID" NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, ',
'	"USER_TYPE_ID" NUMBER NOT NULL ENABLE, ',
'	"MODULE_ID" NUMBER NOT NULL ENABLE, ',
'	"CREATE_USER" VARCHAR2(10 CHAR) NOT NULL ENABLE, ',
'	"CREATE_DATE" DATE NOT NULL ENABLE, ',
'	"UPDATE_USER" VARCHAR2(10 CHAR), ',
'	"UPDATE_DATE" DATE, ',
'	 CONSTRAINT "LANDEV_GROUP_MODULE_ACCESS_GRP_MOD_ACC_ID_PK" PRIMARY KEY ("GRP_MOD_ACC_ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "LANDEV_LOCATION" ',
'   (	"LOCATION_ID" NUMBER DEFAULT ON NULL "LANDEV_LOCATION_SEQ"."NEXTVAL" NOT NULL ENABLE, ',
'	"CREATE_USER" VARCHAR2(10 CHAR) NOT NULL ENABLE, ',
'	"CREATE_DATE" DATE NOT NULL ENABLE, ',
'	"UPDATE_USER" VARCHAR2(10 CHAR), ',
'	"UPDATE_DATE" DATE, ',
'	 CONSTRAINT "LANDEV_LOCATION_LOCATION_ID_PK" PRIMARY KEY ("LOCATION_ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "LANDEV_LOCATION_TRACKER" ',
'   (	"LOC_TRACKER_ID" NUMBER DEFAULT ON NULL "LANDEV_LOCATION_TRACKER_SEQ"."NEXTVAL" NOT NULL ENABLE, ',
'	"WIN_ID" NUMBER NOT NULL ENABLE, ',
'	"LOCATION_ID" NUMBER NOT NULL ENABLE, ',
'	"CREATE_USER" VARCHAR2(10 CHAR) NOT NULL ENABLE, ',
'	"CREATE_DATE" DATE NOT NULL ENABLE, ',
'	"UPDATE_USER" VARCHAR2(10 CHAR), ',
'	"UPDATE_DATE" DATE, ',
'	 CONSTRAINT "LANDEV_LOCATION_TRACKER_LOC_TRACKER_ID_PK" PRIMARY KEY ("LOC_TRACKER_ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "LANDEV_MODULE" ',
'   (	"MODULE_ID" NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, ',
'	"MODULE_NAME" VARCHAR2(30 CHAR) NOT NULL ENABLE, ',
'	"CREATE_USER" VARCHAR2(10 CHAR) NOT NULL ENABLE, ',
'	"CREATE_DATE" DATE NOT NULL ENABLE, ',
'	"UPDATE_USER" VARCHAR2(10 CHAR), ',
'	"UPDATE_DATE" DATE, ',
'	 CONSTRAINT "LANDEV_MODULE_MODULE_ID_PK" PRIMARY KEY ("MODULE_ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "LANDEV_MODULE_ACCESS" ',
'   (	"ACCESS_ID" NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, ',
'	"USER_ID" VARCHAR2(10 CHAR) NOT NULL ENABLE, ',
'	"MODULE_ID" NUMBER NOT NULL ENABLE, ',
'	"CREATE_USER" VARCHAR2(10 CHAR) NOT NULL ENABLE, ',
'	"CREATE_DATE" DATE NOT NULL ENABLE, ',
'	"UPDATE_USER" VARCHAR2(10 CHAR), ',
'	"UPDATE_DATE" DATE, ',
'	 CONSTRAINT "LANDEV_MODULE_ACCESS_PK" PRIMARY KEY ("ACCESS_ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "LANDEV_PW_TOKEN" ',
'   (	"USER_ID" VARCHAR2(10 CHAR) NOT NULL ENABLE, ',
'	"TOKEN" VARCHAR2(40 CHAR) NOT NULL ENABLE, ',
'	"EXPIRY" DATE NOT NULL ENABLE, ',
'	 CONSTRAINT "LANDEV_PW_TOKEN_PK" PRIMARY KEY ("USER_ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "LANDEV_RC" ',
'   (	"RC_CODE" NUMBER DEFAULT ON NULL "LANDEV_RC_SEQ"."NEXTVAL" NOT NULL ENABLE, ',
'	"RC_NAME" VARCHAR2(30 CHAR) NOT NULL ENABLE, ',
'	"CREATE_USER" VARCHAR2(10 CHAR) NOT NULL ENABLE, ',
'	"CREATE_DATE" DATE NOT NULL ENABLE, ',
'	"UPDATE_USER" VARCHAR2(10 CHAR), ',
'	"UPDATE_DATE" DATE, ',
'	 CONSTRAINT "LANDEV_RC_RC_CODE_PK" PRIMARY KEY ("RC_CODE")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "LANDEV_REJECTION" ',
'   (	"REJECTION_ID" NUMBER DEFAULT ON NULL "LANDEV_REJECTION_SEQ"."NEXTVAL" NOT NULL ENABLE, ',
'	"REJECTION_NAME" VARCHAR2(30 CHAR) NOT NULL ENABLE, ',
'	"CREATE_USER" VARCHAR2(10 CHAR) NOT NULL ENABLE, ',
'	"CREATE_DATE" DATE NOT NULL ENABLE, ',
'	"UPDATE_USER" VARCHAR2(10 CHAR), ',
'	"UPDATE_DATE" DATE, ',
'	 CONSTRAINT "LANDEV_REJECTION_REJECTION_ID_PK" PRIMARY KEY ("REJECTION_ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "LANDEV_SIZE" ',
'   (	"SIZE_ID" NUMBER DEFAULT ON NULL "LANDEV_SIZE_SEQ"."NEXTVAL" NOT NULL ENABLE, ',
'	"SIZE_NAME" VARCHAR2(30 CHAR) NOT NULL ENABLE, ',
'	"CREATE_USER" VARCHAR2(10 CHAR) NOT NULL ENABLE, ',
'	"CREATE_DATE" DATE NOT NULL ENABLE, ',
'	"UPDATE_USER" VARCHAR2(10 CHAR), ',
'	"UPDATE_DATE" DATE, ',
'	 CONSTRAINT "LANDEV_SIZE_SIZE_ID_PK" PRIMARY KEY ("SIZE_ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "LANDEV_TRANSMITTAL_FORM" ',
'   (	"TRANS_FORM_ID" NUMBER DEFAULT ON NULL "LANDEV_TRANSMITTAL_FORM_SEQ"."NEXTVAL" NOT NULL ENABLE, ',
'	"CLIENT_CODE" NUMBER NOT NULL ENABLE, ',
'	"RC_CODE" NUMBER NOT NULL ENABLE, ',
'	"TRANS_DATE" DATE NOT NULL ENABLE, ',
'	"TRANS_STATUS" VARCHAR2(1 CHAR) NOT NULL ENABLE, ',
'	"REMARKS" VARCHAR2(50 CHAR), ',
'	"CREATE_USER" VARCHAR2(10 CHAR) NOT NULL ENABLE, ',
'	"CREATE_DATE" DATE NOT NULL ENABLE, ',
'	"UPDATE_USER" VARCHAR2(10 CHAR), ',
'	"UPDATE_DATE" DATE, ',
'	 CONSTRAINT "LANDEV_TRANSMITTAL_FORM_TRANS_FORM_ID_PK" PRIMARY KEY ("TRANS_FORM_ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "LANDEV_USER_TYPE" ',
'   (	"USER_TYPE_ID" NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, ',
'	"USER_TYPE_NAME" VARCHAR2(20 CHAR) NOT NULL ENABLE, ',
'	"CREATE_USER" VARCHAR2(10 CHAR) NOT NULL ENABLE, ',
'	"CREATE_DATE" DATE NOT NULL ENABLE, ',
'	"UPDATE_USER" VARCHAR2(10 CHAR), ',
'	"UPDATE_DATE" DATE, ',
'	 CONSTRAINT "LANDEV_USER_TYPE_USER_TYPE_ID_PK" PRIMARY KEY ("USER_TYPE_ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "LANDEV_WIN" ',
'   (	"WIN_ID" NUMBER DEFAULT ON NULL "LANDEV_WIN_SEQ"."NEXTVAL" NOT NULL ENABLE, ',
'	"BOX_ID" NUMBER NOT NULL ENABLE, ',
'	"TRANS_FORM_ID" NUMBER NOT NULL ENABLE, ',
'	"CREATE_USER" VARCHAR2(10 CHAR) NOT NULL ENABLE, ',
'	"CREATE_DATE" DATE NOT NULL ENABLE, ',
'	"UPDATE_USER" VARCHAR2(10 CHAR), ',
'	"UPDATE_DATE" DATE, ',
'	 CONSTRAINT "LANDEV_WIN_WIN_ID_PK" PRIMARY KEY ("WIN_ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  ALTER TABLE "LANDEV_BOX" ADD CONSTRAINT "LANDEV_BOX_BOX_TYPE_ID_FK" FOREIGN KEY ("BOX_TYPE_ID")',
'	  REFERENCES "LANDEV_BOX_TYPE" ("BOX_TYPE_ID") ENABLE;',
'  ALTER TABLE "LANDEV_BOX" ADD CONSTRAINT "LANDEV_BOX_REJECTION_ID_FK" FOREIGN KEY ("REJECTION_ID")',
'	  REFERENCES "LANDEV_REJECTION" ("REJECTION_ID") ENABLE;',
'  ALTER TABLE "LANDEV_BOX" ADD CONSTRAINT "LANDEV_BOX_SIZE_ID_FK" FOREIGN KEY ("SIZE_ID")',
'	  REFERENCES "LANDEV_SIZE" ("SIZE_ID") ENABLE;',
'  ALTER TABLE "LANDEV_BOX" ADD CONSTRAINT "LANDEV_BOX_TRANS_FORM_ID_FK" FOREIGN KEY ("TRANS_FORM_ID")',
'	  REFERENCES "LANDEV_TRANSMITTAL_FORM" ("TRANS_FORM_ID") ENABLE;',
'',
'  CREATE INDEX "LANDEV_BOX_I1" ON "LANDEV_BOX" ("TRANS_FORM_ID") ',
'  ;',
'',
'  CREATE INDEX "LANDEV_BOX_I2" ON "LANDEV_BOX" ("BOX_TYPE_ID") ',
'  ;',
'',
'  CREATE INDEX "LANDEV_BOX_I3" ON "LANDEV_BOX" ("REJECTION_ID") ',
'  ;',
'',
'  CREATE INDEX "LANDEV_BOX_I4" ON "LANDEV_BOX" ("SIZE_ID") ',
'  ;',
'',
'  ALTER TABLE "LANDEV_BRR_FORM" ADD CONSTRAINT "LANDEV_BRR_FORM_APPROVER_ID_FK" FOREIGN KEY ("APPROVER_ID")',
'	  REFERENCES "LANDEV_APPROVER" ("APPROVER_ID") ENABLE;',
'  ALTER TABLE "LANDEV_BRR_FORM" ADD CONSTRAINT "LANDEV_BRR_FORM_CLIENT_CODE_FK" FOREIGN KEY ("CLIENT_CODE")',
'	  REFERENCES "LANDEV_CLIENTS" ("CLIENT_CODE") ENABLE;',
'  ALTER TABLE "LANDEV_BRR_FORM" ADD CONSTRAINT "LANDEV_BRR_FORM_RC_CODE_FK" FOREIGN KEY ("RC_CODE")',
'	  REFERENCES "LANDEV_RC" ("RC_CODE") ENABLE;',
'',
'  CREATE INDEX "LANDEV_BRR_FORM_I1" ON "LANDEV_BRR_FORM" ("CLIENT_CODE") ',
'  ;',
'',
'  CREATE INDEX "LANDEV_BRR_FORM_I2" ON "LANDEV_BRR_FORM" ("RC_CODE") ',
'  ;',
'',
'  CREATE INDEX "LANDEV_BRR_FORM_I3" ON "LANDEV_BRR_FORM" ("APPROVER_ID") ',
'  ;',
'',
'  ALTER TABLE "LANDEV_BRR_TRACKING" ADD CONSTRAINT "LANDEV_BRR_TRACKING_BRR_FORM_ID_FK" FOREIGN KEY ("BRR_FORM_ID")',
'	  REFERENCES "LANDEV_BRR_FORM" ("BRR_FORM_ID") ENABLE;',
'  ALTER TABLE "LANDEV_BRR_TRACKING" ADD CONSTRAINT "LANDEV_BRR_TRACKING_WIN_ID_FK" FOREIGN KEY ("WIN_ID")',
'	  REFERENCES "LANDEV_WIN" ("WIN_ID") ENABLE;',
'',
'  CREATE INDEX "LANDEV_BRR_TRACKING_I1" ON "LANDEV_BRR_TRACKING" ("WIN_ID") ',
'  ;',
'',
'  CREATE INDEX "LANDEV_BRR_TRACKING_I2" ON "LANDEV_BRR_TRACKING" ("BRR_FORM_ID") ',
'  ;',
'',
'  ALTER TABLE "LANDEV_GROUP_MODULE_ACCESS" ADD CONSTRAINT "LANDEV_GROUP_MODULE_ACCESS_MODULE_ID_FK" FOREIGN KEY ("MODULE_ID")',
'	  REFERENCES "LANDEV_MODULE" ("MODULE_ID") ENABLE;',
'  ALTER TABLE "LANDEV_GROUP_MODULE_ACCESS" ADD CONSTRAINT "LANDEV_GROUP_MODULE_ACCESS_USER_TYPE_ID_FK" FOREIGN KEY ("USER_TYPE_ID")',
'	  REFERENCES "LANDEV_USER_TYPE" ("USER_TYPE_ID") ENABLE;',
'',
'  CREATE INDEX "LANDEV_GROUP_MODULE_ACCESS_I1" ON "LANDEV_GROUP_MODULE_ACCESS" ("USER_TYPE_ID") ',
'  ;',
'',
'  CREATE INDEX "LANDEV_GROUP_MODULE_ACCESS_I2" ON "LANDEV_GROUP_MODULE_ACCESS" ("MODULE_ID") ',
'  ;',
'',
'  ALTER TABLE "LANDEV_LOCATION_TRACKER" ADD CONSTRAINT "LANDEV_LOCATION_TRACKER_LOCATION_ID_FK" FOREIGN KEY ("LOCATION_ID")',
'	  REFERENCES "LANDEV_LOCATION" ("LOCATION_ID") ENABLE;',
'  ALTER TABLE "LANDEV_LOCATION_TRACKER" ADD CONSTRAINT "LANDEV_LOCATION_TRACKER_WIN_ID_FK" FOREIGN KEY ("WIN_ID")',
'	  REFERENCES "LANDEV_WIN" ("WIN_ID") ENABLE;',
'',
'  CREATE INDEX "LANDEV_LOCATION_TRACKER_I1" ON "LANDEV_LOCATION_TRACKER" ("WIN_ID") ',
'  ;',
'',
'  CREATE INDEX "LANDEV_LOCATION_TRACKER_I2" ON "LANDEV_LOCATION_TRACKER" ("LOCATION_ID") ',
'  ;',
'',
'  ALTER TABLE "LANDEV_MODULE_ACCESS" ADD CONSTRAINT "LANDEV_MODULE_ACCESS_MODULE_FK" FOREIGN KEY ("MODULE_ID")',
'	  REFERENCES "LANDEV_MODULE" ("MODULE_ID") ENABLE;',
'  ALTER TABLE "LANDEV_MODULE_ACCESS" ADD CONSTRAINT "LANDEV_MODULE_ACCESS_USER_FK" FOREIGN KEY ("USER_ID")',
'	  REFERENCES "LANDEV_USERS" ("USER_ID") ENABLE;',
'',
'  CREATE OR REPLACE EDITIONABLE TRIGGER "LANDEV_RC_T" ',
'before',
'insert or update  on "LANDEV_RC"',
'for each row',
'begin',
'    if inserting then',
'        :NEW.create_user := SYS_CONTEXT(''APEX$SESSION'', ''APP_USER'');',
'        :NEW.create_date := SYSDATE;',
'    end if;',
'    ',
'    :NEW.update_user := SYS_CONTEXT(''APEX$SESSION'', ''APP_USER'');',
'    :NEW.update_date := SYSDATE;',
'end;',
'/',
'ALTER TRIGGER "LANDEV_RC_T" ENABLE;',
'',
'  ALTER TABLE "LANDEV_TRANSMITTAL_FORM" ADD CONSTRAINT "LANDEV_TRANSMITTAL_FORM_CLIENT_CODE_FK" FOREIGN KEY ("CLIENT_CODE")',
'	  REFERENCES "LANDEV_CLIENTS" ("CLIENT_CODE") ENABLE;',
'  ALTER TABLE "LANDEV_TRANSMITTAL_FORM" ADD CONSTRAINT "LANDEV_TRANSMITTAL_FORM_RC_CODE_FK" FOREIGN KEY ("RC_CODE")',
'	  REFERENCES "LANDEV_RC" ("RC_CODE") ENABLE;',
'',
'  CREATE INDEX "LANDEV_TRANSMITTAL_FORM_I1" ON "LANDEV_TRANSMITTAL_FORM" ("CLIENT_CODE") ',
'  ;',
'',
'  CREATE INDEX "LANDEV_TRANSMITTAL_FORM_I2" ON "LANDEV_TRANSMITTAL_FORM" ("RC_CODE") ',
'  ;',
'',
'  ALTER TABLE "LANDEV_USERS" ADD CONSTRAINT "LANDEV_USERS_USER_TYPE_FK" FOREIGN KEY ("USER_TYPE_ID")',
'	  REFERENCES "LANDEV_USER_TYPE" ("USER_TYPE_ID") ENABLE;',
'',
'  ALTER TABLE "LANDEV_WIN" ADD CONSTRAINT "LANDEV_WIN_BOX_ID_FK" FOREIGN KEY ("BOX_ID", "TRANS_FORM_ID")',
'	  REFERENCES "LANDEV_BOX" ("BOX_ID", "TRANS_FORM_ID") ENABLE;',
'',
'  CREATE INDEX "LANDEV_WIN_I1" ON "LANDEV_WIN" ("BOX_ID") ',
'  ;',
'',
'',
'create or replace package landev_authentication',
'as',
'    procedure send_reset_password_link(',
'        p_email_address       VARCHAR2',
'    );',
'end;',
'/',
'',
'',
'',
'create or replace trigger "LANDEV_RC_T"',
'before',
'insert or update  on "LANDEV_RC"',
'for each row',
'begin',
'    if inserting then',
'        :NEW.create_user := SYS_CONTEXT(''APEX$SESSION'', ''APP_USER'');',
'        :NEW.create_date := SYSDATE;',
'    end if;',
'    ',
'    :NEW.update_user := SYS_CONTEXT(''APEX$SESSION'', ''APP_USER'');',
'    :NEW.update_date := SYSDATE;',
'end;',
'/',
'',
'',
'',
'create or replace package body landev_authentication',
'as',
'    procedure send_reset_password_link(',
'        p_email_address       VARCHAR2',
'    )',
'    as',
'        v_user          varchar2(10);',
'        v_email         varchar2(30) := p_email_address;',
'        v_token         varchar2(50) := SYS_GUID();',
'        v_reset_url     varchar2(1000);',
'        v_app_files     varchar2(1000) := v(''APP_FILES'');',
'        v_host_url      varchar2(1000) := APEX_UTIL.HOST_URL(''SCRIPT''); ',
'        v_img_path      varchar2(100) := v_host_url || v_app_files || ''emails'';',
'    begin',
'        begin',
'            select user_id',
'              into v_user',
'              from landev_users',
'             where email_address = v_email;',
'        exception',
'            when no_data_found then',
'                v_email := NULL;',
'                v_user := NULL;',
'        end;',
'',
'        if v_user is not null then',
'            delete from landev_pw_token where user_id = v_user;',
'',
'             -- generate and save token',
'            insert into landev_pw_token (user_id, token, expiry)',
'                values (v_user, v_token, (sysdate + interval ''5'' minute));',
'',
'            v_reset_url := APEX_UTIL.HOST_URL() || apex_util.prepare_url(',
'                p_url => ''f?p=''',
'                    || SYS_CONTEXT(''APEX$SESSION'', ''APP_ID'')',
'                    || '':10001:''',
'                    || SYS_CONTEXT(''APEX$SESSION'', ''APP_SESSION'')',
'                    || ''::NO::RS_TOKEN:''',
'                    || v_token',
'                    || ''''',
'            );',
'',
'            -- send token to email',
'            apex_mail.send(',
'                p_template_static_id => ''PW_RESET_LINK'',',
'                p_placeholders       => ''{ "IMG_PATH": '' || apex_json.stringify( v_img_path ) || '', "RESET_LINK" : '' || apex_json.stringify( v_reset_url ) || ''}'',',
'                p_to                 => v_email,',
'                p_from               => ''johndaniel.marasigan@gmail.com'' );',
'        end if;',
'    end send_reset_password_link;',
'end;',
'/',
' '))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932328062760065009)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'LANDEV_AUTHENTICATION'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932321641534065005)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'LANDEV_APPROVER_SEQ'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932321848463065006)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'LANDEV_BOX_SEQ'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932322013482065006)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'LANDEV_BOX_TYPE_SEQ'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932322233647065006)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'LANDEV_BRR_FORM_SEQ'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932322400641065006)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'LANDEV_CLIENTS_SEQ'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932322674924065006)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'LANDEV_LOCATION_SEQ'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932322882245065006)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'LANDEV_LOCATION_TRACKER_SEQ'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932323069248065006)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'LANDEV_RC_SEQ'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932323236593065006)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'LANDEV_REJECTION_SEQ'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932323401430065006)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'LANDEV_SIZE_SEQ'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932323688517065007)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'LANDEV_TRANSMITTAL_FORM_SEQ'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932323823100065007)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'LANDEV_WIN_SEQ'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932324099847065007)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'LANDEV_APPROVER'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932324251371065007)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'LANDEV_BOX'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932324450820065007)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'LANDEV_BOX_TYPE'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932324696031065007)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'LANDEV_BRR_FORM'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932324890769065007)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'LANDEV_BRR_TRACKING'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932325022509065007)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'LANDEV_CLIENTS'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932325284406065008)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'LANDEV_ERR_LOGS'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932325497741065008)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'LANDEV_GROUP_MODULE_ACCESS'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932325618925065008)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'LANDEV_LOCATION'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932325808717065008)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'LANDEV_LOCATION_TRACKER'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932326037143065008)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'LANDEV_MODULE'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932326287457065008)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'LANDEV_MODULE_ACCESS'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.4'
,p_default_workspace_id=>91148611334986183999
,p_default_application_id=>211981
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WRKSPCEJDM'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932326429774065008)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'LANDEV_PW_TOKEN'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932326645215065008)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'LANDEV_RC'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932326854768065008)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'LANDEV_REJECTION'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932327002892065008)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'LANDEV_SIZE'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932327242973065009)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'LANDEV_TRANSMITTAL_FORM'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932327486177065009)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'LANDEV_USERS'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932327634952065009)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'LANDEV_USER_TYPE'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932327808304065009)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'LANDEV_WIN'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(108932328285232065009)
,p_script_id=>wwv_flow_imp.id(108932321479911065002)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'LANDEV_RC_T'
,p_last_updated_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_last_updated_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
,p_created_by=>'JOHNDANIEL.MARASIGAN@GMAIL.COM'
,p_created_on=>to_date('20240514054024','YYYYMMDDHH24MISS')
);
wwv_flow_imp.component_end;
end;
/
