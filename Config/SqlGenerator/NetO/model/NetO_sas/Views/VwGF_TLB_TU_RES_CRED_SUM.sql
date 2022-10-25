-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwGF_TLB_TU_RES_CRED_SUM]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[RESPONSEID],
      x.[CREDITRESPONSEID],
      x.[REPORTING_PERIOD],
      x.[PUB_REC_NUM],
      x.[COLLECTIONS_NUM],
      x.[NEG_TRADE_NUM],
      x.[HIST_NEG_TRADE_NUM],
      x.[HIST_OCC_NEG_NUM],
      x.[TRADE_NUM],
      x.[REV_CHKCRED_TRD_NUM],
      x.[INSTALL_TRD_NUM],
      x.[MORT_TRD_NUM],
      x.[OPEN_TRADE_NUM],
      x.[INQUIRY_NUM],
      x.[UNSPECIFIEDTRADECOUNT]
   FROM [clt_NetO].[GF_TLB_TU_RES_CRED_SUM] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
