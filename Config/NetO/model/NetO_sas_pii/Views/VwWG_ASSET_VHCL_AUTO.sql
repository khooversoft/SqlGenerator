-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwWG_ASSET_VHCL_AUTO]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[ASSETID] AS [ASSETID],
      x.[MILEAGE] AS [MILEAGE],
      x.[SERIES] AS [SERIES],
      x.[STYLE] AS [STYLE],
      x.[S_MTRCYCLESTYLE] AS [S_MTRCYCLESTYLE],
      A0.Descript AS [MTRCYCLESTYLE],
      x.[S_GENERIC_BODY_STYLE] AS [S_GENERIC_BODY_STYLE],
      A1.Descript AS [GENERIC_BODY_STYLE]
   FROM [clt_NetO].[WG_ASSET_VHCL_AUTO] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_MTRCYCLESTYLE = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_ASSET_VHCL_AUTO' and A0.[COLUMNNAME] = 'S_MTRCYCLESTYLE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_GENERIC_BODY_STYLE = A1.[DBSYMBOL] AND A1.[TableName] = 'WG_ASSET_VHCL_AUTO' and A1.[COLUMNNAME] = 'S_GENERIC_BODY_STYLE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
