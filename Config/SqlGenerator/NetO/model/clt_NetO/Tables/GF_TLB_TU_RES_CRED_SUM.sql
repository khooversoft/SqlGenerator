-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TLB_TU_RES_CRED_SUM]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [BNUM]                             smallint             NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [RESPONSEID]                       int                  NOT NULL,
   [CREDITRESPONSEID]                 int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [REPORTING_PERIOD]                 nchar(1)             NULL,
   [PUB_REC_NUM]                      smallint             NULL,
   [COLLECTIONS_NUM]                  smallint             NULL,
   [NEG_TRADE_NUM]                    smallint             NULL,
   [HIST_NEG_TRADE_NUM]               smallint             NULL,
   [HIST_OCC_NEG_NUM]                 smallint             NULL,
   [TRADE_NUM]                        smallint             NULL,
   [REV_CHKCRED_TRD_NUM]              smallint             NULL,
   [INSTALL_TRD_NUM]                  smallint             NULL,
   [MORT_TRD_NUM]                     smallint             NULL,
   [OPEN_TRADE_NUM]                   smallint             NULL,
   [INQUIRY_NUM]                      smallint             NULL,
   [UNSPECIFIEDTRADECOUNT]            int                  NULL,
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
