-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_BRM_IMPORT]
(
   [IMPORTID]                         int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [IMP_USER_NAME]                    nvarchar(80)         NULL,
   [IMP_DATE_TIME]                    datetime             NULL,
   [IMP_FILE_NAME]                    nvarchar(80)         NULL,
   [IMP_FILE_PATH]                    nvarchar(120)        NULL,
   [S_IMP_STATUS]                     nvarchar(8)          NULL,
   [EXPORTID]                         int                  NULL,
   [EXP_USER_NAME]                    nvarchar(80)         NULL,
   [EXP_DATE_TIME]                    datetime             NULL,
   [EXP_FILE_NAME]                    nvarchar(80)         NULL,
   [EXP_FILE_PATH]                    nvarchar(120)        NULL,
   [S_EXP_STATUS]                     nvarchar(8)          NULL,
   [EXP_RULESET_ID]                   int                  NULL,
   [EXP_BRM_IDENT]                    nvarchar(8)          NULL,
   [EXP_BRM_NAME]                     nvarchar(30)         NULL,
   [EXP_BRM_EFFDT]                    datetime             NULL,
   [EXP_BRM_LC_DT]                    datetime             NULL,
   [S_EXP_BRM_STATUS]                 nvarchar(8)          NULL,
   [IMP_NOTES]                        nvarchar(1000)       NULL,
   [EXP_NOTES]                        nvarchar(1000)       NULL,
   [SYS_FINDINGS]                     nvarchar(1000)       NULL,
   [DBID]                             nchar(5)             NULL,
   [EXP_INCL_FIELDS]                  nchar(1)             NULL,
   [EXP_INCL_CATS]                    nchar(1)             NULL,
   [EXP_INCL_GRIDS]                   nchar(1)             NULL,
   [IMP_IMP_FIELDS]                   nchar(1)             NULL,
   [IMP_IMP_CATS]                     nchar(1)             NULL,
   [IMP_IMP_GRIDS]                    nchar(1)             NULL,
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
WITH (DISTRIBUTION = HASH ([IMPORTID]), CLUSTERED COLUMNSTORE INDEX)
;
