-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TLBR_ASSIST_PROGRAMS]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [BNUM]                             smallint             NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [GIFTCTR]                          smallint             NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [FUNDS_RESERVED]                   nchar(1)             NULL,
   [FUNDS_FRONTED]                    nchar(1)             NULL,
   [GRANT_CRA_CODE]                   nvarchar(30)         NULL,
   [PROGRAM_EXP]                      datetime             NULL,
   [S_ASSIST_TYPE]                    nvarchar(8)          NULL,
   [REPAY_TERM]                       smallint             NULL,
   [REPAY_RATE]                       decimal(16,6)        NULL,
   [REPAY_PMT]                        decimal(18,3)        NULL,
   [GRANT_LOAN_NUM]                   nchar(20)            NULL,
   [AGENCY_APP_DATE]                  datetime             NULL,
   [AHP_PROJECT]                      nchar(40)            NULL,
   [REPAY_REQ]                        nchar(1)             NULL,
   [ALLOW_AP_EXCEPT]                  nchar(1)             NULL,
   [PROVIDER_EIN]                     nvarchar(10)         NULL,
   [S_ASSIST_PVDR_TYP]                nvarchar(8)          NULL,
   [AP_OTH_DESC]                      nvarchar(80)         NULL,
   [RECORD_CREATED]                   nvarchar(35)         NULL,
   [ASSETCTR]                         smallint             NULL,
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
