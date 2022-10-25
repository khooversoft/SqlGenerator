-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[PREDCTRS]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [BNUM]                             smallint             NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [SOURCE]                           nvarchar(30)         NOT NULL,
   [NAME]                             nvarchar(15)         NOT NULL,
   [CTR]                              smallint             NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [CQOPER]                           nchar(1)             NULL,
   [ORGORRES]                         nchar(1)             NULL,
   [SCORES]                           nvarchar(10)         NULL,
   [FACTORS]                          nvarchar(30)         NULL,
   [EXCLUSION]                        nchar(1)             NULL,
   [RECORD_CREATED]                   nvarchar(35)         NULL,
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
