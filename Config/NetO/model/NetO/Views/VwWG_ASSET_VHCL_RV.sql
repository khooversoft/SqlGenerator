-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwWG_ASSET_VHCL_RV]
AS
   SELECT
      x.[LNUM],
      x.[ASSETID],
      x.[S_RV_TYPE],
      x.[MILEAGE],
      x.[NBR_AXLES],
      x.[NBR_SLIDES],
      x.[RV_LENGTH],
      x.[SELF_CONTAINED_YN],
      x.[S_CATEGORY],
      A0.[Descript] AS [S_CATEGORY_X],
      x.[S_MODEL_TYPE],
      A1.[Descript] AS [S_MODEL_TYPE_X]
   FROM [clt_NetO].[WG_ASSET_VHCL_RV] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_CATEGORY] = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_ASSET_VHCL_RV' and A0.[COLUMNNAME] = 'S_CATEGORY'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_MODEL_TYPE] = A1.[DBSYMBOL] AND A1.[TableName] = 'WG_ASSET_VHCL_RV' and A1.[COLUMNNAME] = 'S_MODEL_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
