-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwWG_COLLATERAL_TRADEIN]
AS
   SELECT
      x.[LNUM],
      x.[YEAR],
      x.[MAKE],
      x.[VIN],
      x.[MODEL],
      x.[TRIM],
      x.[VALUE],
      x.[REG_NUM],
      x.[ASSETID],
      x.[TRDIN_LOAN_VALUE],
      x.[NET_TRDIN_VALUE],
      x.[ISFINANCED],
      x.[FININSTITUTE],
      x.[MNTHPAYMENT],
      x.[TRDINCNTR]
   FROM [clt_NetO].[WG_COLLATERAL_TRADEIN] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
