-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[BORDEP]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [BNUM]                             smallint             NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [AGES]                             nvarchar(50)         NULL,
   [AGENCY]                           nvarchar(25)         NULL,
   [CONTACT]                          nvarchar(25)         NULL,
   [COST]                             decimal(16,6)        NULL,
   [PAYFLAG]                          nchar(1)             NULL,
   [NOPYDBID]                         nchar(5)             NULL,
   [NOPAYSN]                          int                  NULL,
   [AGYADD1]                          nvarchar(35)         NULL,
   [AGYADD2]                          nvarchar(35)         NULL,
   [AGYCITY]                          nvarchar(25)         NULL,
   [AGYSTATE]                         nchar(2)             NULL,
   [AGYZIP]                           nvarchar(10)         NULL,
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
