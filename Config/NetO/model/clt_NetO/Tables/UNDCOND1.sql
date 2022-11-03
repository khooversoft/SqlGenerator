-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[UNDCOND1]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [S_DISPOSITION]                    nvarchar(8)          NULL,
   [S_UWOPT1]                         nvarchar(8)          NULL,
   [S_UWOPT2]                         nvarchar(8)          NULL,
   [S_UWOPT3]                         nvarchar(8)          NULL,
   [S_UWOPT4]                         nvarchar(8)          NULL,
   [S_UWOPT5]                         nvarchar(8)          NULL,
   [S_UWOPT6]                         nvarchar(8)          NULL,
   [INV_APPRV_DATE]                   datetime             NULL,
   [UNDW_EXP_DATE]                    datetime             NULL,
   [DOC_EXP_DATE]                     datetime             NULL,
   [DISPOSITION_DATE]                 datetime             NULL,
   [CREDSCORE]                        int                  NULL,
   [QUALCODE]                         nvarchar(8)          NULL,
   [UWCOMDBID]                        nchar(5)             NULL,
   [UWCOMSN]                          int                  NULL,
   [AUSCOMDBID]                       nchar(5)             NULL,
   [AUSCOMSN]                         int                  NULL,
   [S_TRGTINV]                        nvarchar(8)          NULL,
   [UWENTITY]                         nvarchar(8)          NULL,
   [CREDSCOVRD]                       int                  NULL,
   [DELEGATED_ENDORSEMENT]            nchar(1)             NULL,
   [UW_INCOME_EXCEPTION_DESC]         nvarchar(240)        NULL,
   [EST_CRED_SCORE]                   int                  NULL,
   [CREDIT_REPORT_REF]                nvarchar(20)         NULL,
   [S_CREDSCORE_OVERRIDE_REASON]      nvarchar(8)          NULL,
   [CS_OVR_REAS_OTHERDESC]            nvarchar(35)         NULL,
   [DECISIONTARGETDATE]               datetime             NULL,
   [DISPOSITION_DATETIME]             datetime             NULL,
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
