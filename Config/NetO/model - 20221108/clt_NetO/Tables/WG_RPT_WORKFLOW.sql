-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_RPT_WORKFLOW]
(
   [WORKTYPE_INSTANCE]                int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [LNUM]                             nchar(20)            NULL,
   [WORKTYPE_CODE]                    nvarchar(8)          NULL,
   [EST_EFFORT_TIME]                  int                  NULL,
   [EXP_RESOLVE_DATE]                 datetime             NULL,
   [PROC_GROUP]                       nvarchar(256)        NULL,
   [QUEUED_DATE]                      date                 NULL,
   [QUEUED_DATETIME]                  datetime             NULL,
   [QUEUED_TIME]                      int                  NULL,
   [RESERVED_USER]                    nvarchar(60)         NULL,
   [RESOLVE_DATE]                     datetime             NULL,
   [RESOLVE_TYPE]                     nvarchar(256)        NULL,
   [WF_ACTIVITY]                      nvarchar(128)        NULL,
   [WF_STATUS]                        smallint             NULL,
   [WORK_OPENED_DATE]                 date                 NULL,
   [WORK_OPENED_DATETIME]             datetime             NULL,
   [WORKED_TIME]                      int                  NULL,
   [WORKTYPE]                         nvarchar(256)        NULL,
   [RESERVED_USERID]                  int                  NULL,
   [PROC_GROUP_CODE]                  nvarchar(8)          NULL,
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
WITH (DISTRIBUTION = HASH ([WORKTYPE_INSTANCE]), CLUSTERED COLUMNSTORE INDEX)
;
