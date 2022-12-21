-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwTRANSDATA]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[PURPRICE] AS [PURPRICE],
      x.[IMPCOST] AS [IMPCOST],
      x.[COSTLAND] AS [COSTLAND],
      x.[REFAMT] AS [REFAMT],
      x.[ESTPREPD] AS [ESTPREPD],
      x.[ESTCLOS] AS [ESTCLOS],
      x.[MIFUND] AS [MIFUND],
      HASHBYTES('SHA2_256', CAST(x.[DISCOUNT] AS NVARCHAR(50))) AS [DISCOUNT],
      x.[SUBFIN] AS [SUBFIN],
      x.[SELLCLOS] AS [SELLCLOS],
      x.[FINFEES] AS [FINFEES],
      x.[LOANONLY] AS [LOANONLY],
      x.[SUB_BELOW_MARKET] AS [SUB_BELOW_MARKET],
      x.[SUBORDINATE_TOTAL] AS [SUBORDINATE_TOTAL]
   FROM [clt_NetO].[TRANSDATA] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
