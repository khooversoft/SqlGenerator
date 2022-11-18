-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwDELIVERY]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[COMNUM] AS [COMNUM],
      x.[CONTRACT] AS [CONTRACT],
      x.[COMTYPE] AS [COMTYPE],
      x.[SELLNUM] AS [SELLNUM],
      x.[NUMBED1] AS [NUMBED1],
      x.[NUMBED2] AS [NUMBED2],
      x.[NUMBED3] AS [NUMBED3],
      x.[NUMBED4] AS [NUMBED4],
      x.[RENTS1] AS [RENTS1],
      x.[RENTS2] AS [RENTS2],
      x.[RENTS3] AS [RENTS3],
      x.[RENTS4] AS [RENTS4],
      x.[S_SPF1] AS [S_SPF1],
      x.[S_SPF2] AS [S_SPF2],
      x.[S_SPF3] AS [S_SPF3],
      x.[S_SPF4] AS [S_SPF4],
      x.[S_SPF5] AS [S_SPF5],
      x.[S_SPF6] AS [S_SPF6],
      x.[ASSUM] AS [ASSUM],
      x.[RDF] AS [RDF],
      x.[INTPD] AS [INTPD],
      x.[MATDATE] AS [MATDATE],
      x.[S_SFSRC1] AS [S_SFSRC1],
      x.[S_SFSRC2] AS [S_SFSRC2],
      x.[SFAMT1] AS [SFAMT1],
      x.[SFAMT2] AS [SFAMT2],
      x.[S_BECA1] AS [S_BECA1],
      x.[S_BECA2] AS [S_BECA2],
      x.[S_BECF1] AS [S_BECF1],
      x.[S_BECF2] AS [S_BECF2],
      x.[S_DPSRC1] AS [S_DPSRC1],
      x.[S_DPSRC2] AS [S_DPSRC2],
      x.[S_DPSRC3] AS [S_DPSRC3],
      x.[S_DPSRC4] AS [S_DPSRC4],
      x.[DPAMT1] AS [DPAMT1],
      x.[DPAMT2] AS [DPAMT2],
      x.[DPAMT3] AS [DPAMT3],
      x.[DPAMT4] AS [DPAMT4],
      x.[S_CCSRC1] AS [S_CCSRC1],
      x.[S_CCSRC2] AS [S_CCSRC2],
      x.[S_CCSRC3] AS [S_CCSRC3],
      x.[S_CCSRC4] AS [S_CCSRC4],
      x.[CCAMT1] AS [CCAMT1],
      x.[CCAMT2] AS [CCAMT2],
      x.[CCAMT3] AS [CCAMT3],
      x.[CCAMT4] AS [CCAMT4],
      x.[MICOV] AS [MICOV],
      x.[UPB] AS [UPB],
      x.[S_LFC] AS [S_LFC],
      x.[INTEND] AS [INTEND],
      x.[LPID] AS [LPID],
      x.[INTONLY] AS [INTONLY],
      x.[LOOKBACK] AS [LOOKBACK],
      x.[NETNEGAM] AS [NETNEGAM],
      x.[S_RFC] AS [S_RFC],
      x.[UWNAME] AS [UWNAME],
      x.[INVLNUM] AS [INVLNUM],
      x.[MTGORIG] AS [MTGORIG],
      x.[TP1] AS [TP1],
      x.[TP2] AS [TP2],
      x.[MAXTERM] AS [MAXTERM],
      x.[SELLER] AS [SELLER],
      x.[CID_SELLER_AGENT] AS [CID_SELLER_AGENT],
      x.[S_SPF7] AS [S_SPF7],
      x.[S_SPF8] AS [S_SPF8],
      x.[S_SPF9] AS [S_SPF9],
      x.[S_SPF10] AS [S_SPF10],
      x.[UPBO] AS [UPBO],
      x.[ESCROW_ACCT_BALANCE] AS [ESCROW_ACCT_BALANCE],
      x.[ESCROW_PYMT_AMT] AS [ESCROW_PYMT_AMT],
      x.[NEXTPMTDUEDATE] AS [NEXTPMTDUEDATE],
      x.[APPR_DOC_ID] AS [APPR_DOC_ID],
      x.[READY_FOR_DELIVERY] AS [READY_FOR_DELIVERY],
      x.[S_INT_ACCRUAL_TYPE] AS [S_INT_ACCRUAL_TYPE],
      x.[S_INT_CALC_BASIS_TYPE] AS [S_INT_CALC_BASIS_TYPE],
      x.[INT_CALC_EFF_MONTHS] AS [INT_CALC_EFF_MONTHS],
      x.[S_INT_CALC_PERIOD] AS [S_INT_CALC_PERIOD],
      x.[S_INT_CALC_METHOD] AS [S_INT_CALC_METHOD],
      x.[LOAN_DELIV_GSE] AS [LOAN_DELIV_GSE],
      x.[LTV_RATIO_PCT] AS [LTV_RATIO_PCT],
      x.[S_FNM_HOME_IMP_PROD] AS [S_FNM_HOME_IMP_PROD],
      x.[ADJ_LOAN_AMT] AS [ADJ_LOAN_AMT],
      x.[ADJ_LOAN_AMT_OVRD] AS [ADJ_LOAN_AMT_OVRD],
      x.[APPR_DOC_ID_OVER] AS [APPR_DOC_ID_OVER],
      x.[MLADISCCOMPLETE] AS [MLADISCCOMPLETE],
      x.[S_SIGNDOCPUSHBACK] AS [S_SIGNDOCPUSHBACK],
      x.[MI_CANCELLED] AS [MI_CANCELLED],
      x.[HFA_IDENTIFIER] AS [HFA_IDENTIFIER]
   FROM [clt_NetO].[DELIVERY] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
