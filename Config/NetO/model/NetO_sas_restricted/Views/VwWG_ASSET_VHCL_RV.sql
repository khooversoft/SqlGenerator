-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwWG_ASSET_VHCL_RV]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[ASSETID] AS [ASSETID],
      x.[S_RV_TYPE] AS [S_RV_TYPE],
      A0.Descript AS [D_RV_TYPE],
      x.[MILEAGE] AS [MILEAGE],
      x.[NBR_AXLES] AS [NBR_AXLES],
      x.[NBR_SLIDES] AS [NBR_SLIDES],
      x.[RV_LENGTH] AS [RV_LENGTH],
      x.[SELF_CONTAINED_YN] AS [SELF_CONTAINED_YN],
      x.[S_CATEGORY] AS [S_CATEGORY],
      A1.Descript AS [D_CATEGORY],
      x.[S_MODEL_TYPE] AS [S_MODEL_TYPE],
      A2.Descript AS [D_MODEL_TYPE]
   FROM [clt_NetO].[WG_ASSET_VHCL_RV] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_RV_TYPE = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_ASSET_VHCL_RV' and A0.[COLUMNNAME] = 'S_RV_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_CATEGORY = A1.[DBSYMBOL] AND A1.[TableName] = 'WG_ASSET_VHCL_RV' and A1.[COLUMNNAME] = 'S_CATEGORY'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_MODEL_TYPE = A2.[DBSYMBOL] AND A2.[TableName] = 'WG_ASSET_VHCL_RV' and A2.[COLUMNNAME] = 'S_MODEL_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
