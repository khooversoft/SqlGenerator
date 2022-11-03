-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GFXVARTEXTMAP]
(
   [TABLENAME]                        nvarchar(35)         NOT NULL,
   [DBIDCOLUMN]                       nvarchar(35)         NOT NULL,
   [SERIALNOCOLUMN]                   nvarchar(35)         NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [VARTEXTTABLE]                     nvarchar(35)         NOT NULL,
   [COMPROPERTYNAME]                  nvarchar(35)         NOT NULL,
   [VARTEXTPROPERTYCOLUMN]            nvarchar(35)         NULL,
   [LOGICALFIELDNAME]                 nvarchar(35)         NULL,
   [ISPROPERTYREADONLY]               int                  NULL,
   [ROWWRAPPERORDER]                  int                  NULL,
   [SRCENV]                           nvarchar(5)          NULL,
   [REC_CUSTOM]                       nchar(1)             NULL,
   [CREATE_DATE]                      datetime             NULL,
   [MODIFY_DATE]                      datetime             NULL,
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
WITH (DISTRIBUTION = HASH ([TABLENAME]), CLUSTERED COLUMNSTORE INDEX)
;
