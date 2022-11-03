-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwWG_COLLATERAL_TYPES]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[DBID] AS [DBID],
      x.[ROWSERIALNO] AS [ROWSERIALNO],
      x.[COLLATERAL_TYPE] AS [COLLATERAL_TYPE],
      x.[PLEDGED_ACC] AS [PLEDGED_ACC],
      x.[COLLATERAL_CODE] AS [COLLATERAL_CODE],
      x.[COLLATERAL_RECEIVED] AS [COLLATERAL_RECEIVED]
   FROM [clt_NetO].[WG_COLLATERAL_TYPES] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
