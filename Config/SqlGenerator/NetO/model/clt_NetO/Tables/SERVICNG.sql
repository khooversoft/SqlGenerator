-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[SERVICNG]
(
   [LNUM]                              nchar(20)            NOT NULL,
   [ASAP_RecordEffectiveDateTime]      datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]               datetime2(7)         NULL,
   [SELLSERV]                          nchar(1)             NULL,
   [SERVABLE]                          nchar(1)             NULL,
   [SERVLOAN]                          nchar(1)             NULL,
   [NSERLOAN]                          nchar(1)             NULL,
   [NSERLNS3]                          nchar(1)             NULL,
   [SELLSOME]                          nchar(1)             NULL,
   [PERTRANS]                          decimal(16,6)        NULL,
   [PERCT]                             decimal(16,6)        NULL,
   [DOESSELL]                          nchar(1)             NULL,
   [PREVIOUS]                          nchar(1)             NULL,
   [YEAR1]                             nchar(4)             NULL,
   [PERC_YR1]                          decimal(16,6)        NULL,
   [YEAR2]                             nchar(4)             NULL,
   [PERC_YR2]                          decimal(16,6)        NULL,
   [YEAR3]                             nchar(4)             NULL,
   [PERC_YR3]                          decimal(16,6)        NULL,
   [INFODOES]                          nchar(1)             NULL,
   [FORMSTOP]                          datetime             NULL,
   [NEWSTART]                          datetime             NULL,
   [AFFCTSN]                           int                  NULL,
   [AFFTDBID]                          nchar(5)             NULL,
   [ACTIONSN]                          int                  NULL,
   [ACTNDBID]                          nchar(5)             NULL,
   [CHNGHOLD]                          nchar(1)             NULL,
   [CHNGMORT]                          nchar(1)             NULL,
   [ASSUMPTN]                          nchar(1)             NULL,
   [TRANSDAT]                          datetime             NULL,
   [SELRETTR]                          nchar(1)             NULL,
   [WILTRANS]                          nchar(1)             NULL,
   [BATCH_ID_SER_NUM]                  int                  NULL,
   [SERVICING_TYPE]                    nvarchar(8)          NULL,
   [RETAINED_SERVICING_RATE]           numeric(16,6)        NULL,
   [RETAINED_SERVICING_MULTIPLIER]     numeric(16,6)        NULL,
   [RETAINED_SERVICING_VALUE]          numeric(16,6)        NULL,
   [HEDGE_CANDIDATE_YN]                nchar(1)             NULL,
   [COUPON_RATE]                       numeric(16,6)        NULL,
   [GUARANTEE_FEE]                     numeric(16,6)        NULL,
   [DOCS_SENT]                         datetime             NULL,
   [INDEMNF_AMT]                       decimal(18,3)        NULL,
   [PC_FEDEX_NUM]                      nchar(50)            NULL,
   [S_SERVICING_STATUS]                nvarchar(8)          NULL,
   [ASAP_ROW_HASH]                     nvarchar(64)         NULL,
   [ASAP_DML_FLAG]                     nvarchar(2)          NULL,
   [ASAP_CREATED_DATE]                 datetime2(7)         NULL,
   [ASAP_UPDATED_DATE]                 datetime2(7)         NULL,
   [ASAP_LINEAGE_ID]                   nvarchar(36)         NULL,
   [ASAP_ACTIVITY_ID]                  nvarchar(36)         NULL,
   [ASAP_TRIGGER_ID]                   nvarchar(36)         NULL,
   [ASAP_SRC_FILEPATH]                 nvarchar(1000)       NULL,
   [ASAP_SRC_FILE_DATE]                datetime2(7)         NULL,
   [ASAP_SRC_NAME]                     nvarchar(36)         NULL
)
WITH (DISTRIBUTION = HASH ([LNUM]), CLUSTERED COLUMNSTORE INDEX)
;
