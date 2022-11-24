-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwWG_ASSET_VEHICLE]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[ASSETID] AS [ASSETID],
      x.[VIN] AS [VIN],
      x.[MAKE] AS [MAKE],
      x.[MODEL] AS [MODEL],
      x.[YEAR] AS [YEAR],
      x.[MSRP] AS [MSRP],
      x.[NEW_YN] AS [NEW_YN],
      x.[SERIAL] AS [SERIAL],
      x.[S_FUEL_TYPE] AS [S_FUEL_TYPE],
      A0.Descript AS [S_FUEL_TYPEDescription],
      x.[VEHICLE_REG_NUMBER] AS [VEHICLE_REG_NUMBER],
      x.[BODY_TRIM] AS [BODY_TRIM],
      x.[S_VEHICLE_CONDITION] AS [S_VEHICLE_CONDITION],
      A1.Descript AS [S_VEHICLE_CONDITIONDescription],
      x.[COLL_TITLE_NUM] AS [COLL_TITLE_NUM],
      x.[S_CNRE_OWNERSHIP] AS [S_CNRE_OWNERSHIP],
      A2.Descript AS [S_CNRE_OWNERSHIPDescription],
      x.[LENGTH] AS [LENGTH],
      x.[WIDTH] AS [WIDTH],
      x.[PRIOR_TITLE_NUM] AS [PRIOR_TITLE_NUM],
      x.[S_TRANSF_AS] AS [S_TRANSF_AS],
      A3.Descript AS [S_TRANSF_ASDescription],
      x.[S_TRANSF_TO] AS [S_TRANSF_TO],
      A4.Descript AS [S_TRANSF_TODescription],
      x.[S_DAMAGE_TYPE] AS [S_DAMAGE_TYPE],
      A5.Descript AS [S_DAMAGE_TYPEDescription],
      x.[IS_BONAFIDE_GIFT] AS [IS_BONAFIDE_GIFT],
      x.[IS_REBUILDABLE] AS [IS_REBUILDABLE],
      x.[IS_ENERGY_EFFICIENT] AS [IS_ENERGY_EFFICIENT],
      x.[PRIOR_STATE] AS [PRIOR_STATE],
      x.[S_COLOR] AS [S_COLOR],
      A6.Descript AS [S_COLORDescription],
      x.[S_GV_WEIGHT_RATING] AS [S_GV_WEIGHT_RATING],
      A7.Descript AS [S_GV_WEIGHT_RATINGDescription],
      x.[SCALE_WEIGHT] AS [SCALE_WEIGHT],
      x.[PAYOFF_AMT] AS [PAYOFF_AMT],
      x.[MFG_REBATE] AS [MFG_REBATE],
      x.[DLR_REBATE] AS [DLR_REBATE],
      x.[INVOICE_PRC] AS [INVOICE_PRC],
      x.[DLR_OPT_PRICE] AS [DLR_OPT_PRICE],
      x.[DLR_OPT_VALUE] AS [DLR_OPT_VALUE]
   FROM [clt_NetO].[WG_ASSET_VEHICLE] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_FUEL_TYPE = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_ASSET_VEHICLE' and A0.[COLUMNNAME] = 'S_FUEL_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_VEHICLE_CONDITION = A1.[DBSYMBOL] AND A1.[TableName] = 'WG_ASSET_VEHICLE' and A1.[COLUMNNAME] = 'S_VEHICLE_CONDITION'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_CNRE_OWNERSHIP = A2.[DBSYMBOL] AND A2.[TableName] = 'WG_ASSET_VEHICLE' and A2.[COLUMNNAME] = 'S_CNRE_OWNERSHIP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.S_TRANSF_AS = A3.[DBSYMBOL] AND A3.[TableName] = 'WG_ASSET_VEHICLE' and A3.[COLUMNNAME] = 'S_TRANSF_AS'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.S_TRANSF_TO = A4.[DBSYMBOL] AND A4.[TableName] = 'WG_ASSET_VEHICLE' and A4.[COLUMNNAME] = 'S_TRANSF_TO'
      LEFT JOIN [clt_NetO].[SymbolLookup] A5 on x.S_DAMAGE_TYPE = A5.[DBSYMBOL] AND A5.[TableName] = 'WG_ASSET_VEHICLE' and A5.[COLUMNNAME] = 'S_DAMAGE_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A6 on x.S_COLOR = A6.[DBSYMBOL] AND A6.[TableName] = 'WG_ASSET_VEHICLE' and A6.[COLUMNNAME] = 'S_COLOR'
      LEFT JOIN [clt_NetO].[SymbolLookup] A7 on x.S_GV_WEIGHT_RATING = A7.[DBSYMBOL] AND A7.[TableName] = 'WG_ASSET_VEHICLE' and A7.[COLUMNNAME] = 'S_GV_WEIGHT_RATING'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
