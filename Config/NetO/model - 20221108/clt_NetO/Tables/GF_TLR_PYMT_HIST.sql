-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TLR_PYMT_HIST]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [ROWSERIALNO]                      int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [TRAN_DATE]                        datetime             NULL,
   [DUE_DATE]                         datetime             NULL,
   [PRINCIPAL]                        decimal(18,3)        NULL,
   [INTEREST]                         decimal(16,6)        NULL,
   [ESCROW]                           decimal(18,3)        NULL,
   [LT_CHRG]                          decimal(18,3)        NULL,
   [PRIN_BAL]                         decimal(18,3)        NULL,
   [USERNAME]                         nvarchar(128)        NULL,
   [TOTAL_PYMT]                       decimal(18,3)        NULL,
   [ESCROW_BAL]                       decimal(18,3)        NULL,
   [TRAN_TYPE]                        nvarchar(20)         NULL,
   [CHECK_NUMBER]                     nvarchar(30)         NULL,
   [NOTES]                            nvarchar(100)        NULL,
   [EFFECTIVE_DATE]                   datetime             NULL,
   [BUYDOWN_INT]                      decimal(16,6)        NULL,
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
