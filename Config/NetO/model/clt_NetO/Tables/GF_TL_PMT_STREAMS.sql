-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TL_PMT_STREAMS]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [PAYMENTCTR]                       int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [NUMPAYMENTS]                      smallint             NULL,
   [STARTDATE]                        datetime             NULL,
   [FULLPAYMENT]                      decimal(16,6)        NULL,
   [CONSTINTERESTFLAG]                nchar(1)             NULL,
   [DEFERODDDAYSFLAG]                 nchar(1)             NULL,
   [BOUGHTDOWNFLAG]                   nchar(1)             NULL,
   [INTERESTONLYFLAG]                 nchar(1)             NULL,
   [MINPMTSTREAMFLAG]                 nchar(1)             NULL,
   [DISCLOSEDPMT]                     decimal(16,6)        NULL,
   [PMI]                              decimal(16,6)        NULL,
   [EFFECTIVERATE]                    decimal(16,6)        NULL,
   [PAYMENTRATE]                      decimal(16,6)        NULL,
   [ADJUSTEDPAYMENT]                  decimal(16,6)        NULL,
   [BALANCE]                          decimal(16,6)        NULL,
   [PIPAYMENT]                        decimal(16,6)        NULL,
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
