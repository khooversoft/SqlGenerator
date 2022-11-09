-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwWG_COLLATERAL_TRADEIN]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[TRDINCNTR] AS [TRDINCNTR],
      x.[YEAR] AS [YEAR],
      x.[MAKE] AS [MAKE],
      x.[VIN] AS [VIN],
      x.[MODEL] AS [MODEL],
      x.[TRIM] AS [TRIM],
      x.[VALUE] AS [VALUE],
      x.[REG_NUM] AS [REG_NUM],
      x.[ASSETID] AS [ASSETID],
      x.[TRDIN_LOAN_VALUE] AS [TRDIN_LOAN_VALUE],
      x.[NET_TRDIN_VALUE] AS [NET_TRDIN_VALUE],
      x.[ISFINANCED] AS [ISFINANCED],
      x.[FININSTITUTE] AS [FININSTITUTE],
      x.[MNTHPAYMENT] AS [MNTHPAYMENT]
   FROM [clt_NetO].[WG_COLLATERAL_TRADEIN] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
