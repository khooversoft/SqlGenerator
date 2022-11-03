-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[TRANSDATA]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [PURPRICE]                         decimal(18,3)        NULL,
   [IMPCOST]                          decimal(18,3)        NULL,
   [COSTLAND]                         decimal(18,3)        NULL,
   [REFAMT]                           decimal(18,3)        NULL,
   [ESTPREPD]                         decimal(18,3)        NULL,
   [ESTCLOS]                          decimal(18,3)        NULL,
   [MIFUND]                           decimal(18,3)        NULL,
   [DISCOUNT]                         decimal(18,3)        NULL,
   [SUBFIN]                           decimal(18,3)        NULL,
   [SELLCLOS]                         decimal(18,3)        NULL,
   [FINFEES]                          decimal(18,3)        NULL,
   [LOANONLY]                         decimal(18,3)        NULL,
   [SUB_BELOW_MARKET]                 nchar(1)             NULL,
   [SUBORDINATE_TOTAL]                decimal(18,3)        NULL,
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
