-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_creditScore].[VwGF_TL_AFFORDABILITY]
AS
   SELECT
      x.[LNUM],
      HASHBYTES('SHA2_256', CAST(x.[INCOME] AS NVARCHAR(50))) AS [INCOME],
      HASHBYTES('SHA2_256', CAST(x.[DEBTS] AS NVARCHAR(50))) AS [DEBTS],
      x.[TAXRATE],
      x.[HAZRATE],
      x.[CASHONHAND],
      x.[LIMITDOWNPMT],
      x.[PROPOSEDINTRATE],
      x.[PROPOSEDLOANTERM],
      x.[PROPOSEDHOUSINGRATIO],
      x.[PROPOSEDDEBTRATIO],
      x.[AFFORDPITI],
      x.[AFFORDLOANAMT],
      x.[AFFORDSALESPRICE],
      x.[AFFORDPNTS],
      x.[AFFORDCLOSINGCOSTS]
   FROM [clt_NetO].[GF_TL_AFFORDABILITY] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
