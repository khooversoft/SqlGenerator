-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_COLLATERAL_TRADEIN]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [TRDINCNTR]                        int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [YEAR]                             int                  NULL,
   [MAKE]                             nvarchar(30)         NULL,
   [VIN]                              nvarchar(20)         NULL,
   [MODEL]                            nvarchar(20)         NULL,
   [TRIM]                             nvarchar(30)         NULL,
   [VALUE]                            decimal(18,3)        NULL,
   [REG_NUM]                          nvarchar(64)         NULL,
   [ASSETID]                          int                  NULL,
   [TRDIN_LOAN_VALUE]                 numeric(16,6)        NULL,
   [NET_TRDIN_VALUE]                  numeric(16,6)        NULL,
   [ISFINANCED]                       nchar(1)             NULL,
   [FININSTITUTE]                     nvarchar(40)         NULL,
   [MNTHPAYMENT]                      numeric(8,2)         NULL,
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
