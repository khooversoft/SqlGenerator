-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwGF_TLR_PYMT_HIST]
AS
   SELECT
      x.[LNUM],
      x.[DBID],
      HASHBYTES('SHA2_256', CAST(x.[ROWSERIALNO] AS NVARCHAR(50))) AS [ROWSERIALNO],
      x.[TRAN_DATE],
      x.[DUE_DATE],
      HASHBYTES('SHA2_256', CAST(x.[PRINCIPAL] AS NVARCHAR(50))) AS [PRINCIPAL],
      x.[INTEREST],
      x.[ESCROW],
      x.[LT_CHRG],
      HASHBYTES('SHA2_256', CAST(x.[PRIN_BAL] AS NVARCHAR(50))) AS [PRIN_BAL],
      HASHBYTES('SHA2_256', x.[USERNAME]) AS [USERNAME],
      x.[TOTAL_PYMT],
      x.[ESCROW_BAL],
      x.[TRAN_TYPE],
      HASHBYTES('SHA2_256', x.[CHECK_NUMBER]) AS [CHECK_NUMBER],
      x.[NOTES],
      x.[EFFECTIVE_DATE],
      x.[BUYDOWN_INT]
   FROM [clt_NetO].[GF_TLR_PYMT_HIST] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
