-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TL_MISC_CK]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [GF_CK1]                           nchar(1)             NULL,
   [GF_CK2]                           nchar(1)             NULL,
   [GF_CK3]                           nchar(1)             NULL,
   [GF_CK4]                           nchar(1)             NULL,
   [GF_CK5]                           nchar(1)             NULL,
   [GF_CK6]                           nchar(1)             NULL,
   [GF_CK7]                           nchar(1)             NULL,
   [GF_CK8]                           nchar(1)             NULL,
   [GF_CK10]                          nchar(1)             NULL,
   [GF_CK9]                           nchar(1)             NULL,
   [GF_CK11]                          nchar(1)             NULL,
   [GF_CK12]                          nchar(1)             NULL,
   [GF_CK13]                          nchar(1)             NULL,
   [GF_CK14]                          nchar(1)             NULL,
   [GF_CK15]                          nchar(1)             NULL,
   [GF_CK16]                          nchar(1)             NULL,
   [GF_CK17]                          nchar(1)             NULL,
   [GF_CK18]                          nchar(1)             NULL,
   [GF_CK19]                          nchar(1)             NULL,
   [GF_CK20]                          nchar(1)             NULL,
   [GF_CREDIT_SCORE]                  int                  NULL,
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
WITH (DISTRIBUTION = HASH ([LNUM]), CLUSTERED COLUMNSTORE INDEX)
;
