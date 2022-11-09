-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TS_CMS_CONTACT_INFO]
(
   [CID]                              int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [ACTIVE]                           nchar(1)             NOT NULL,
   [S_CMSSTATUS]                      nvarchar(8)          NULL,
   [FULLNAME]                         nvarchar(90)         NULL,
   [SHORTNAME]                        nvarchar(20)         NULL,
   [SSNTIN]                           nvarchar(11)         NULL,
   [S_TITLE]                          nvarchar(8)          NULL,
   [REFCODE]                          nvarchar(20)         NULL,
   [CREATED_BY_USER]                  int                  NULL,
   [CREATED_DATE]                     datetime             NULL,
   [LAST_UPDATE_USER]                 int                  NULL,
   [LAST_UPDATED]                     datetime             NULL,
   [SPANISH_SPEAKING]                 nchar(1)             NULL,
   [DOB]                              datetime             NULL,
   [E_SIGNATURE_GUID]                 nvarchar(100)        NULL,
   [FIRSTNAME]                        nvarchar(30)         NULL,
   [MIDDLENAME]                       nvarchar(30)         NULL,
   [LASTNAME]                         nvarchar(35)         NULL,
   [SUFFIXNAME]                       nvarchar(4)          NULL,
   [PORTAL_REFCODE]                   nvarchar(40)         NULL,
   [ASAP_ROW_HASH]                    nvarchar(64)         NULL,
   [ASAP_DML_FLAG]                    nvarchar(2)          NULL,
   [ASAP_CREATED_DATE]                datetime2(7)         NULL,
   [ASAP_UPDATED_DATE]                datetime2(7)         NULL,
   [ASAP_LINEAGE_ID]                  nvarchar(36)         NULL,
   [ASAP_ACTIVITY_ID]                 nvarchar(36)         NULL,
   [ASAP_TRIGGER_ID]                  nvarchar(36)         NULL,
   [ASAP_SRC_FILEPATH]                nvarchar(1000)       NULL,
   [ASAP_SRC_FILE_DATE]               datetime2(7)         NULL,
   [ASAP_SRC_NAME]                    nvarchar(36)         NULL
)
WITH (DISTRIBUTION = HASH ([CID]), CLUSTERED COLUMNSTORE INDEX)
;
