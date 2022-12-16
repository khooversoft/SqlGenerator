-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TLB_TU_RES_SCORING]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [BNUM]                             smallint             NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [RESPONSEID]                       int                  NOT NULL,
   [CREDITRESPONSEID]                 int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [PRODUCT_CODE]                     nvarchar(5)          NULL,
   [SIGN]                             nchar(1)             NULL,
   [SCORE]                            nvarchar(5)          NULL,
   [SCORING_IND_FLAG]                 nchar(1)             NULL,
   [SCORE_DEROG_ALERT_FLAG]           nchar(1)             NULL,
   [FIRST_FACTOR]                     nvarchar(3)          NULL,
   [SECOND_FACTOR]                    nvarchar(3)          NULL,
   [THIRD_FACTOR]                     nvarchar(3)          NULL,
   [FOURTH_FACTOR]                    nvarchar(3)          NULL,
   [SCORE_CARD_IND]                   nvarchar(2)          NULL,
   [FIRSTFACTORNARRATIVE]             nvarchar(100)        NULL,
   [SECONDFACTORNARRATIVE]            nvarchar(100)        NULL,
   [THIRDFACTORNARRATIVE]             nvarchar(100)        NULL,
   [FOURTHFACTORNARRATIVE]            nvarchar(100)        NULL,
   [S_ALERTFLAG]                      nvarchar(8)          NULL,
   [SEARCH_STATUS]                    nvarchar(15)         NULL,
   [FILEINQUIRIES_IMPACTEDSCORE]      nchar(1)             NULL,
   [NOSCOREREASON]                    nvarchar(30)         NULL,
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
