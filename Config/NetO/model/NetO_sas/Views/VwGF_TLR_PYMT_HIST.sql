-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwGF_TLR_PYMT_HIST]
AS
   SELECT
      x.[LNUM],
      x.[DBID],
      x.[ROWSERIALNO],
      x.[TRAN_DATE],
      x.[DUE_DATE],
      x.[PRINCIPAL],
      x.[INTEREST],
      x.[ESCROW],
      x.[LT_CHRG],
      x.[PRIN_BAL],
      HASHBYTES('SHA2_256', x.[USERNAME]) AS [USERNAME],
      x.[TOTAL_PYMT],
      x.[ESCROW_BAL],
      x.[TRAN_TYPE],
      x.[CHECK_NUMBER],
      x.[NOTES],
      x.[EFFECTIVE_DATE],
      x.[BUYDOWN_INT]
   FROM [clt_NetO].[GF_TLR_PYMT_HIST] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
