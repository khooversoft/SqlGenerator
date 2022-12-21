-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwASSETS]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[ASSETCTR],
      x.[S_ASSET],
      A0.[Descript] AS [S_ASSET_X],
      x.[ASSETDSC],
      HASHBYTES('SHA2_256', x.[ACCTNUM]) AS [ACCTNUM],
      x.[HOLDER],
      HASHBYTES('SHA2_256', x.[HADDR1]) AS [HADDR1],
      HASHBYTES('SHA2_256', x.[HADDR2]) AS [HADDR2],
      x.[HCITY],
      HASHBYTES('SHA2_256', x.[HSTATE]) AS [HSTATE],
      x.[HZIP],
      HASHBYTES('SHA2_256', x.[HPHONE]) AS [HPHONE],
      x.[HEXT],
      x.[HFAX],
      x.[ATTNOF],
      HASHBYTES('SHA2_256', CAST(x.[ACCTBAL] AS NVARCHAR(50))) AS [ACCTBAL],
      x.[ACCTIN],
      x.[LIFEFACE],
      x.[VERIFY],
      x.[ISSUER],
      x.[SHARES],
      x.[DIVIDEND],
      x.[OMIT],
      x.[ASSETVERIFIED],
      x.[AUTO_MAKE_DESC],
      x.[AUTO_MODEL_YEAR],
      HASHBYTES('SHA2_256', x.[OTHERASSETTYPEDESC]) AS [OTHERASSETTYPEDESC],
      x.[HCOUNTRY],
      x.[ATS_ACCOUNT],
      HASHBYTES('SHA2_256', x.[ODP_ACCOUNT]) AS [ODP_ACCOUNT],
      x.[ASSET_VERIFI_TYPE],
      A1.[Descript] AS [ASSET_VERIFI_TYPE_X],
      x.[ASSET_VERI_TYPE_DESC],
      x.[ORDER_CHECK],
      x.[RECORD_CREATED],
      x.[FORMFREE_CTR],
      x.[BUILDER_EARNEST],
      x.[ASSET_INDICATOR],
      x.[S_ACCOUNT_OWNERSHIP],
      A2.[Descript] AS [S_ACCOUNT_OWNERSHIP_X],
      x.[S_GIFT_PRVDR_TYPE],
      A3.[Descript] AS [S_GIFT_PRVDR_TYPE_X],
      x.[GIFT_PRVDR_OTH_DESC],
      x.[GIFT_DEPOSIT_STATUS]
   FROM [clt_NetO].[ASSETS] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_ASSET] = A0.[DBSYMBOL] AND A0.[TableName] = 'ASSETS' and A0.[COLUMNNAME] = 'S_ASSET'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[ASSET_VERIFI_TYPE] = A1.[DBSYMBOL] AND A1.[TableName] = 'ASSETS' and A1.[COLUMNNAME] = 'ASSET_VERIFI_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[S_ACCOUNT_OWNERSHIP] = A2.[DBSYMBOL] AND A2.[TableName] = 'ASSETS' and A2.[COLUMNNAME] = 'S_ACCOUNT_OWNERSHIP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.[S_GIFT_PRVDR_TYPE] = A3.[DBSYMBOL] AND A3.[TableName] = 'ASSETS' and A3.[COLUMNNAME] = 'S_GIFT_PRVDR_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
