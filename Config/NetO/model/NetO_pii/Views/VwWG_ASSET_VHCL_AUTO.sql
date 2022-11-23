-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwWG_ASSET_VHCL_AUTO]
AS
   SELECT
      x.[LNUM],
      x.[ASSETID],
      x.[MILEAGE],
      x.[SERIES],
      x.[STYLE],
      x.[S_MTRCYCLESTYLE],
      A0.Descript AS [S_MTRCYCLESTYLE_Description],
      x.[S_GENERIC_BODY_STYLE],
      A1.Descript AS [S_GENERIC_BODY_STYLE_Description]
   FROM [clt_NetO].[WG_ASSET_VHCL_AUTO] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_MTRCYCLESTYLE = A0.DBSYMBOL AND A0.[TableName] = 'WG_ASSET_VHCL_AUTO' and A0.[COLUMNNAME] = 'S_MTRCYCLESTYLE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_GENERIC_BODY_STYLE = A1.DBSYMBOL AND A1.[TableName] = 'WG_ASSET_VHCL_AUTO' and A1.[COLUMNNAME] = 'S_GENERIC_BODY_STYLE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
