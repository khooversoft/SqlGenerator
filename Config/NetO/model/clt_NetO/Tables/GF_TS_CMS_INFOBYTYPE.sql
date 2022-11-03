-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TS_CMS_INFOBYTYPE]
(
   [CID]                              int                  NOT NULL,
   [S_CMSTYPE]                        nvarchar(8)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [S_STATUS]                         nvarchar(8)          NULL,
   [STATUS_START_DT]                  datetime             NULL,
   [STATUS_STOP_DT]                   datetime             NULL,
   [STATUS_CHGD_DT]                   datetime             NULL,
   [USEPARENT]                        nchar(1)             NULL,
   [S_GRADE]                          nvarchar(8)          NULL,
   [COMPLIANCE_MONITOR]               nchar(1)             NULL,
   [COMPLIANCE_EMAIL]                 nvarchar(128)        NULL,
   [EMPLOYER_ID]                      nvarchar(20)         NULL,
   [LAST_UPDATED_USER]                int                  NULL,
   [LAST_UPDATED]                     datetime             NULL,
   [CHUMS_ID]                         nvarchar(30)         NULL,
   [HUD_APPROVED]                     nchar(1)             NULL,
   [RECEIVE_RATE_ALERTS]              nchar(1)             NULL,
   [SAR_ID]                           nvarchar(6)          NULL,
   [PROVIDER_ID]                      nvarchar(40)         NULL,
   [S_TYPE_OF_COMPANY]                nvarchar(8)          NULL,
   [CMS_SHORT_DESC]                   nvarchar(128)        NULL,
   [CMS_COMMENTS]                     nvarchar(128)        NULL,
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
