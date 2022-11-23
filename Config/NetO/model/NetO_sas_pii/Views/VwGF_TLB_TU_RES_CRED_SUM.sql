-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TLB_TU_RES_CRED_SUM]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[RESPONSEID] AS [RESPONSEID],
      x.[CREDITRESPONSEID] AS [CREDITRESPONSEID],
      x.[REPORTING_PERIOD] AS [REPORTING_PERIOD],
      x.[PUB_REC_NUM] AS [PUB_REC_NUM],
      x.[COLLECTIONS_NUM] AS [COLLECTIONS_NUM],
      x.[NEG_TRADE_NUM] AS [NEG_TRADE_NUM],
      x.[HIST_NEG_TRADE_NUM] AS [HIST_NEG_TRADE_NUM],
      x.[HIST_OCC_NEG_NUM] AS [HIST_OCC_NEG_NUM],
      x.[TRADE_NUM] AS [TRADE_NUM],
      x.[REV_CHKCRED_TRD_NUM] AS [REV_CHKCRED_TRD_NUM],
      x.[INSTALL_TRD_NUM] AS [INSTALL_TRD_NUM],
      x.[MORT_TRD_NUM] AS [MORT_TRD_NUM],
      x.[OPEN_TRADE_NUM] AS [OPEN_TRADE_NUM],
      x.[INQUIRY_NUM] AS [INQUIRY_NUM],
      x.[UNSPECIFIEDTRADECOUNT] AS [UNSPECIFIEDTRADECOUNT]
   FROM [clt_NetO].[GF_TLB_TU_RES_CRED_SUM] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
