-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[WG_CORR_FUNDING]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [RESPA_CUTOFF_DAY]                 int                  NULL,
   [RESPA_CUTOFF_DAY_OVRD]            int                  NULL,
   [PURCHASE_TYPE]                    nvarchar(35)         NULL,
   [FED_REF_NBR]                      nvarchar(35)         NULL,
   [FED_REF_NBR_OVRD]                 nvarchar(35)         NULL,
   [WIRE_SCHED_DATE]                  datetime             NULL,
   [WIRE_SCHED_DATE_OVRD]             datetime             NULL,
   [WIRE_SENT_DATE_OVRD]              datetime             NULL,
   [WIRE_SENT_DATE]                   datetime             NULL,
   [ESCROW_BAL_OVRD]                  numeric(16,6)        NULL,
   [LENDER_PD_DISB_OVR]               numeric(16,6)        NULL,
   [MIP_OVRD]                         numeric(16,6)        NULL,
   [INT_PD_DUE_OVRD]                  numeric(16,6)        NULL,
   [AM_CURTAILMENT]                   numeric(16,6)        NULL,
   [AM_CURT_OVRD]                     numeric(16,6)        NULL,
   [TOTAL_PRICE_AMOUNT]               decimal(18,3)        NULL,
   [TOTAL_FEES_ADJS]                  decimal(18,3)        NULL,
   [NET_ESCROW_AMT]                   decimal(18,3)        NULL,
   [CORS_INTEREST_PAID]               decimal(18,3)        NULL,
   [TOTAL_WIRE_AMOUNT]                decimal(18,3)        NULL,
   [SELWIRE_ACCOUNT]                  int                  NULL,
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
