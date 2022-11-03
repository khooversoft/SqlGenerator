-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[CONSREFI]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [ORIGCOST]                         decimal(18,3)        NULL,
   [AMTEXLN]                          decimal(18,3)        NULL,
   [PRESVAL]                          decimal(18,3)        NULL,
   [CSTIMPRO]                         decimal(18,3)        NULL,
   [IMPDESC]                          nvarchar(80)         NULL,
   [S_REFPRP]                         nvarchar(8)          NULL,
   [IMPMADE]                          nchar(1)             NULL,
   [LOTACQUR]                         datetime             NULL,
   [REFIIMP]                          decimal(18,3)        NULL,
   [CASHAMT]                          decimal(18,3)        NULL,
   [S_GSE_REFINANCE_PURPOSE]          nvarchar(8)          NULL,
   [S_CONST_PERM_CLOSING]             nvarchar(8)          NULL,
   [INTERNREFI]                       nchar(1)             NULL,
   [ORIG_INVESTOR_LOAN_NBR]           nvarchar(30)         NULL,
   [S_ORIG_INVESTOR]                  nvarchar(8)          NULL,
   [OTHER_INVESTOR_DESC]              nvarchar(50)         NULL,
   [OTHERGSEREFIPURPTYPEDESC]         nvarchar(80)         NULL,
   [REPLACE_EXIST_CONSTR_LOAN]        nchar(1)             NULL,
   [FIR_MAX_MONTHLY_AMT]              int                  NULL,
   [PREVIOUS_REFI_MONTHS]             int                  NULL,
   [CO_REFI_PURCH_CONST]              nchar(1)             NULL,
   [S_CONST_PERM_FEATURE]             nvarchar(8)          NULL,
   [S_FNM_REFI_PGM]                   nvarchar(8)          NULL,
   [S_FRE_REFI_PGM]                   nvarchar(8)          NULL,
   [LIMIT_DESC]                       nvarchar(80)         NULL,
   [REFI_LOAN_ACCT_NBR]               nvarchar(20)         NULL,
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
