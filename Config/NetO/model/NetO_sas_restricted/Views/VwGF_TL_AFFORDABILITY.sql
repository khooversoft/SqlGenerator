-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TL_AFFORDABILITY]
AS
   SELECT
      x.[LNUM],
      x.[INCOME],
      x.[DEBTS],
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
