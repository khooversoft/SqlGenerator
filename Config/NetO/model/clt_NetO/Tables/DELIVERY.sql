-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[DELIVERY]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [COMNUM]                           nvarchar(10)         NULL,
   [CONTRACT]                         nvarchar(10)         NULL,
   [COMTYPE]                          nchar(1)             NULL,
   [SELLNUM]                          nvarchar(10)         NULL,
   [NUMBED1]                          smallint             NULL,
   [NUMBED2]                          smallint             NULL,
   [NUMBED3]                          smallint             NULL,
   [NUMBED4]                          smallint             NULL,
   [RENTS1]                           decimal(18,3)        NULL,
   [RENTS2]                           decimal(18,3)        NULL,
   [RENTS3]                           decimal(18,3)        NULL,
   [RENTS4]                           decimal(18,3)        NULL,
   [S_SPF1]                           nvarchar(8)          NULL,
   [S_SPF2]                           nvarchar(8)          NULL,
   [S_SPF3]                           nvarchar(8)          NULL,
   [S_SPF4]                           nvarchar(8)          NULL,
   [S_SPF5]                           nvarchar(8)          NULL,
   [S_SPF6]                           nvarchar(8)          NULL,
   [ASSUM]                            nchar(1)             NULL,
   [RDF]                              nchar(1)             NULL,
   [INTPD]                            datetime             NULL,
   [MATDATE]                          datetime             NULL,
   [S_SFSRC1]                         nvarchar(8)          NULL,
   [S_SFSRC2]                         nvarchar(8)          NULL,
   [SFAMT1]                           decimal(18,3)        NULL,
   [SFAMT2]                           decimal(18,3)        NULL,
   [S_BECA1]                          nvarchar(8)          NULL,
   [S_BECA2]                          nvarchar(8)          NULL,
   [S_BECF1]                          nvarchar(8)          NULL,
   [S_BECF2]                          nvarchar(8)          NULL,
   [S_DPSRC1]                         nvarchar(8)          NULL,
   [S_DPSRC2]                         nvarchar(8)          NULL,
   [S_DPSRC3]                         nvarchar(8)          NULL,
   [S_DPSRC4]                         nvarchar(8)          NULL,
   [DPAMT1]                           decimal(18,3)        NULL,
   [DPAMT2]                           decimal(18,3)        NULL,
   [DPAMT3]                           decimal(18,3)        NULL,
   [DPAMT4]                           decimal(18,3)        NULL,
   [S_CCSRC1]                         nvarchar(8)          NULL,
   [S_CCSRC2]                         nvarchar(8)          NULL,
   [S_CCSRC3]                         nvarchar(8)          NULL,
   [S_CCSRC4]                         nvarchar(8)          NULL,
   [CCAMT1]                           decimal(18,3)        NULL,
   [CCAMT2]                           decimal(18,3)        NULL,
   [CCAMT3]                           decimal(18,3)        NULL,
   [CCAMT4]                           decimal(18,3)        NULL,
   [MICOV]                            decimal(16,6)        NULL,
   [UPB]                              decimal(18,3)        NULL,
   [S_LFC]                            nvarchar(8)          NULL,
   [INTEND]                           datetime             NULL,
   [LPID]                             datetime             NULL,
   [INTONLY]                          nchar(1)             NULL,
   [LOOKBACK]                         smallint             NULL,
   [NETNEGAM]                         decimal(16,6)        NULL,
   [S_RFC]                            nvarchar(8)          NULL,
   [UWNAME]                           nvarchar(30)         NULL,
   [INVLNUM]                          nvarchar(14)         NULL,
   [MTGORIG]                          nchar(1)             NULL,
   [TP1]                              nvarchar(25)         NULL,
   [TP2]                              nvarchar(25)         NULL,
   [MAXTERM]                          smallint             NULL,
   [SELLER]                           nvarchar(8)          NULL,
   [CID_SELLER_AGENT]                 int                  NULL,
   [S_SPF7]                           nvarchar(8)          NULL,
   [S_SPF8]                           nvarchar(8)          NULL,
   [S_SPF9]                           nvarchar(8)          NULL,
   [S_SPF10]                          nvarchar(8)          NULL,
   [UPBO]                             decimal(18,3)        NULL,
   [ESCROW_ACCT_BALANCE]              decimal(18,3)        NULL,
   [ESCROW_PYMT_AMT]                  decimal(18,3)        NULL,
   [NEXTPMTDUEDATE]                   datetime             NULL,
   [APPR_DOC_ID]                      nvarchar(20)         NULL,
   [READY_FOR_DELIVERY]               nchar(1)             NULL,
   [S_INT_ACCRUAL_TYPE]               nvarchar(8)          NULL,
   [S_INT_CALC_BASIS_TYPE]            nvarchar(8)          NULL,
   [INT_CALC_EFF_MONTHS]              int                  NULL,
   [S_INT_CALC_PERIOD]                nvarchar(8)          NULL,
   [S_INT_CALC_METHOD]                nvarchar(8)          NULL,
   [LOAN_DELIV_GSE]                   nchar(1)             NULL,
   [LTV_RATIO_PCT]                    decimal(16,6)        NULL,
   [S_FNM_HOME_IMP_PROD]              nvarchar(8)          NULL,
   [ADJ_LOAN_AMT]                     decimal(18,3)        NULL,
   [ADJ_LOAN_AMT_OVRD]                decimal(18,3)        NULL,
   [APPR_DOC_ID_OVER]                 nvarchar(20)         NULL,
   [MLADISCCOMPLETE]                  nchar(1)             NULL,
   [S_SIGNDOCPUSHBACK]                nvarchar(8)          NULL,
   [MI_CANCELLED]                     nchar(1)             NULL,
   [HFA_IDENTIFIER]                   nvarchar(7)          NULL,
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
