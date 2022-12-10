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
      A0.[Descript] AS [COLLATERAL_TYPE_X],
      x.[PLEDGED_ACC] AS [PLEDGED_ACC],
      x.[COLLATERAL_CODE] AS [COLLATERAL_CODE],
      x.[COLLATERAL_RECEIVED] AS [COLLATERAL_RECEIVED]
   FROM [clt_NetO].[WG_COLLATERAL_TYPES] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[COLLATERAL_TYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_COLLATERAL_TYPES' and A0.[COLUMNNAME] = 'COLLATERAL_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
