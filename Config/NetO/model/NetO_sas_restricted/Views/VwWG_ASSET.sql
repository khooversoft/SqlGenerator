-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwWG_ASSET]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[ASSETID] AS [ASSETID],
      x.[S_ASSET_TYPE] AS [S_ASSET_TYPE],
      A0.[Descript] AS [S_ASSET_TYPE_X],
      x.[S_ASSET_PURPOSE] AS [S_ASSET_PURPOSE],
      A1.[Descript] AS [S_ASSET_PURPOSE_X],
      x.[ASSET_VERIFIED] AS [ASSET_VERIFIED],
      x.[VERIFICATION_REQD] AS [VERIFICATION_REQD],
      HASHBYTES('SHA2_256', CAST(x.[OWNER_EST_VALUE] AS NVARCHAR(50))) AS [OWNER_EST_VALUE],
      x.[ACTUAL_VALUE] AS [ACTUAL_VALUE],
      x.[SALES_PRICE] AS [SALES_PRICE],
      x.[ASSET_DESC] AS [ASSET_DESC],
      HASHBYTES('SHA2_256', CAST(x.[DISCOUNT_PCT] AS NVARCHAR(50))) AS [DISCOUNT_PCT],
      x.[SALES_PRICE_VALUE] AS [SALES_PRICE_VALUE],
      HASHBYTES('SHA2_256', CAST(x.[DISCOUNT_PCTOVD] AS NVARCHAR(50))) AS [DISCOUNT_PCTOVD],
      x.[PRIMARY_COLLATERAL] AS [PRIMARY_COLLATERAL],
      x.[RECORD_CREATED] AS [RECORD_CREATED]
   FROM [clt_NetO].[WG_ASSET] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_ASSET_TYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_ASSET' and A0.[COLUMNNAME] = 'S_ASSET_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_ASSET_PURPOSE] = A1.[DBSYMBOL] AND A1.[TableName] = 'WG_ASSET' and A1.[COLUMNNAME] = 'S_ASSET_PURPOSE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
