-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwWG_COLLATERAL_TYPES]
AS
   SELECT
      x.[LNUM],
      x.[DBID],
      HASHBYTES('SHA2_256', CAST(x.[ROWSERIALNO] AS NVARCHAR(50))) AS [ROWSERIALNO],
      x.[COLLATERAL_TYPE],
      A0.[Descript] AS [COLLATERAL_TYPE_X],
      x.[PLEDGED_ACC],
      x.[COLLATERAL_CODE],
      x.[COLLATERAL_RECEIVED]
   FROM [clt_NetO].[WG_COLLATERAL_TYPES] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[COLLATERAL_TYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_COLLATERAL_TYPES' and A0.[COLUMNNAME] = 'COLLATERAL_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
