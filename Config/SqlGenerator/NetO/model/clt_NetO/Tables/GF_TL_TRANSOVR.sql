-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TL_TRANSOVR]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [REFIAMTOVRD]                      decimal(18,3)        NULL,
   [ESTPREPDOVRD]                     decimal(18,3)        NULL,
   [ESTCLCOSTOVRD]                    decimal(18,3)        NULL,
   [MIFFOVRD]                         decimal(18,3)        NULL,
   [SELLCOSTOVRD]                     decimal(18,3)        NULL,
   [OTHCRDOVRT]                       decimal(18,3)        NULL,
   [FINFEESOVRD]                      decimal(18,3)        NULL,
   [IMPREPOVRD]                       decimal(18,3)        NULL,
   [SUBFINOVRD]                       decimal(18,3)        NULL,
   [DISCOVRD]                         decimal(18,3)        NULL,
   [CASHFROMTOBORR]                   numeric(16,6)        NULL,
   [NONSPDEBTPAYOFFOVRD]              decimal(18,3)        NULL,
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
