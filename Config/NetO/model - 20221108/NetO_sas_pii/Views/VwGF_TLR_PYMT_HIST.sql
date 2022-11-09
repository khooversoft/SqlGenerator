-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TLR_PYMT_HIST]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[DBID] AS [DBID],
      x.[ROWSERIALNO] AS [ROWSERIALNO],
      x.[TRAN_DATE] AS [TRAN_DATE],
      x.[DUE_DATE] AS [DUE_DATE],
      x.[PRINCIPAL] AS [PRINCIPAL],
      x.[INTEREST] AS [INTEREST],
      x.[ESCROW] AS [ESCROW],
      x.[LT_CHRG] AS [LT_CHRG],
      x.[PRIN_BAL] AS [PRIN_BAL],
      x.[USERNAME] AS [USERNAME],
      x.[TOTAL_PYMT] AS [TOTAL_PYMT],
      x.[ESCROW_BAL] AS [ESCROW_BAL],
      x.[TRAN_TYPE] AS [TRAN_TYPE],
      x.[CHECK_NUMBER] AS [CHECK_NUMBER],
      x.[NOTES] AS [NOTES],
      x.[EFFECTIVE_DATE] AS [EFFECTIVE_DATE],
      x.[BUYDOWN_INT] AS [BUYDOWN_INT]
   FROM [clt_NetO].[GF_TLR_PYMT_HIST] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
