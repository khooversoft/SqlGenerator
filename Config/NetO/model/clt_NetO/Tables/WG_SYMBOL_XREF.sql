-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_SYMBOL_XREF]
(
   [TABLENAME]                        nvarchar(35)         NOT NULL,
   [COLUMNNAME]                       nvarchar(35)         NOT NULL,
   [FLDNAME]                          nvarchar(35)         NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [LKP_TABLE]                        nvarchar(35)         NOT NULL,
   [LKP_COLUMN]                       nvarchar(35)         NOT NULL,
   [LKP_DISPLAY_COLUMN]               nvarchar(35)         NOT NULL,
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
WITH ( CLUSTERED INDEX ([TABLENAME], [COLUMNNAME], [FLDNAME]) )
;
