-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TLB_EX_RES_PROF_SUM]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [BNUM]                             smallint             NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [RESPONSEID]                       int                  NOT NULL,
   [CREDITRESPONSEID]                 int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [DISPUTED_ACCTS_EXCLUDED]          smallint             NULL,
   [PUB_REC_NUM]                      smallint             NULL,
   [INSTALLMENT_AMT]                  decimal(18,3)        NULL,
   [REAL_ESTATE_AMT]                  decimal(18,3)        NULL,
   [REVOLVING_AMT]                    decimal(18,3)        NULL,
   [PAST_DUE_AMT]                     decimal(18,3)        NULL,
   [MONTHLY_PMT]                      decimal(18,3)        NULL,
   [MONTHLY_PMT_PART_FLAG]            nchar(1)             NULL,
   [REAL_ESTATE_PMT]                  decimal(18,3)        NULL,
   [RE_PMT_PART_FLAG]                 nchar(1)             NULL,
   [REVOLVE_AVAIL_PCT]                smallint             NULL,
   [REVOLVE_AVAIL_PART_FLAG]          nchar(1)             NULL,
   [INQUIRIES_TTL]                    smallint             NULL,
   [INQUIRIES_LAST_6_MOS]             smallint             NULL,
   [TRADE_ITEMS_TTL]                  smallint             NULL,
   [PAID_ACCTS]                       smallint             NULL,
   [SATISFACTORY_ACCTS]               smallint             NULL,
   [NOW_DELINQUENT]                   smallint             NULL,
   [WAS_DELINQUENT]                   smallint             NULL,
   [OLDEST_TRADE_OPEN_DT]             datetime             NULL,
   [DELINQUENCIES_30_DAYS]            smallint             NULL,
   [DELINQUENCIES_60_DAYS]            smallint             NULL,
   [DELINQUENCIES_90_DAYS]            smallint             NULL,
   [DEROG_COUNTER]                    smallint             NULL,
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
