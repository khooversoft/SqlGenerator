-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwTRANSDATA]
AS
   SELECT
      x.[LNUM],
      x.[PURPRICE],
      x.[IMPCOST],
      x.[COSTLAND],
      x.[REFAMT],
      x.[ESTPREPD],
      x.[ESTCLOS],
      x.[MIFUND],
      HASHBYTES('SHA2_256', CAST(x.[DISCOUNT] AS NVARCHAR(50))) AS [DISCOUNT],
      x.[SUBFIN],
      x.[SELLCLOS],
      x.[FINFEES],
      x.[LOANONLY],
      x.[SUB_BELOW_MARKET],
      x.[SUBORDINATE_TOTAL]
   FROM [clt_NetO].[TRANSDATA] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
