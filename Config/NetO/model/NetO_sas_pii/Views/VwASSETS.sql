-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwASSETS]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[ASSETCTR] AS [ASSETCTR],
      x.[S_ASSET] AS [S_ASSET],
      A0.Descript AS [ASSET],
      x.[ASSETDSC] AS [ASSETDSC],
      x.[ACCTNUM] AS [ACCTNUM],
      x.[HOLDER] AS [HOLDER],
      x.[HADDR1] AS [HADDR1],
      x.[HADDR2] AS [HADDR2],
      x.[HCITY] AS [HCITY],
      x.[HSTATE] AS [HSTATE],
      x.[HZIP] AS [HZIP],
      x.[HPHONE] AS [HPHONE],
      x.[HEXT] AS [HEXT],
      x.[HFAX] AS [HFAX],
      x.[ATTNOF] AS [ATTNOF],
      x.[ACCTBAL] AS [ACCTBAL],
      x.[ACCTIN] AS [ACCTIN],
      x.[LIFEFACE] AS [LIFEFACE],
      x.[VERIFY] AS [VERIFY],
      x.[ISSUER] AS [ISSUER],
      x.[SHARES] AS [SHARES],
      x.[DIVIDEND] AS [DIVIDEND],
      x.[OMIT] AS [OMIT],
      x.[ASSETVERIFIED] AS [ASSETVERIFIED],
      x.[AUTO_MAKE_DESC] AS [AUTO_MAKE_DESC],
      x.[AUTO_MODEL_YEAR] AS [AUTO_MODEL_YEAR],
      x.[OTHERASSETTYPEDESC] AS [OTHERASSETTYPEDESC],
      x.[HCOUNTRY] AS [HCOUNTRY],
      x.[ATS_ACCOUNT] AS [ATS_ACCOUNT],
      x.[ODP_ACCOUNT] AS [ODP_ACCOUNT],
      x.[ASSET_VERIFI_TYPE] AS [ASSET_VERIFI_TYPE],
      x.[ASSET_VERI_TYPE_DESC] AS [ASSET_VERI_TYPE_DESC],
      x.[ORDER_CHECK] AS [ORDER_CHECK],
      x.[RECORD_CREATED] AS [RECORD_CREATED],
      x.[FORMFREE_CTR] AS [FORMFREE_CTR],
      x.[BUILDER_EARNEST] AS [BUILDER_EARNEST],
      x.[ASSET_INDICATOR] AS [ASSET_INDICATOR],
      x.[S_ACCOUNT_OWNERSHIP] AS [S_ACCOUNT_OWNERSHIP],
      A1.Descript AS [ACCOUNT_OWNERSHIP],
      x.[S_GIFT_PRVDR_TYPE] AS [S_GIFT_PRVDR_TYPE],
      A2.Descript AS [GIFT_PRVDR_TYPE],
      x.[GIFT_PRVDR_OTH_DESC] AS [GIFT_PRVDR_OTH_DESC],
      x.[GIFT_DEPOSIT_STATUS] AS [GIFT_DEPOSIT_STATUS]
   FROM [clt_NetO].[ASSETS] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_ASSET = A0.[DBSYMBOL] AND A0.[TableName] = 'ASSETS' and A0.[COLUMNNAME] = 'S_ASSET'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_ACCOUNT_OWNERSHIP = A1.[DBSYMBOL] AND A1.[TableName] = 'ASSETS' and A1.[COLUMNNAME] = 'S_ACCOUNT_OWNERSHIP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_GIFT_PRVDR_TYPE = A2.[DBSYMBOL] AND A2.[TableName] = 'ASSETS' and A2.[COLUMNNAME] = 'S_GIFT_PRVDR_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
