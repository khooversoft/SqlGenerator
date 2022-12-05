-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwASSETS]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[ASSETCTR],
      x.[S_ASSET],
      A0.Descript AS [D_ASSET],
      x.[ASSETDSC],
      x.[ACCTNUM],
      x.[HOLDER],
      x.[HADDR1],
      x.[HADDR2],
      x.[HCITY],
      x.[HSTATE],
      x.[HZIP],
      x.[HPHONE],
      x.[HEXT],
      x.[HFAX],
      x.[ATTNOF],
      x.[ACCTBAL],
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
      x.[OTHERASSETTYPEDESC],
      x.[HCOUNTRY],
      x.[ATS_ACCOUNT],
      x.[ODP_ACCOUNT],
      x.[ASSET_VERIFI_TYPE],
      x.[ASSET_VERI_TYPE_DESC],
      x.[ORDER_CHECK],
      x.[RECORD_CREATED],
      x.[FORMFREE_CTR],
      x.[BUILDER_EARNEST],
      x.[ASSET_INDICATOR],
      x.[S_ACCOUNT_OWNERSHIP],
      A1.Descript AS [D_ACCOUNT_OWNERSHIP],
      x.[S_GIFT_PRVDR_TYPE],
      A2.Descript AS [D_GIFT_PRVDR_TYPE],
      x.[GIFT_PRVDR_OTH_DESC],
      x.[GIFT_DEPOSIT_STATUS]
   FROM [clt_NetO].[ASSETS] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_ASSET = A0.[DBSYMBOL] AND A0.[TableName] = 'ASSETS' and A0.[COLUMNNAME] = 'S_ASSET'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_ACCOUNT_OWNERSHIP = A1.[DBSYMBOL] AND A1.[TableName] = 'ASSETS' and A1.[COLUMNNAME] = 'S_ACCOUNT_OWNERSHIP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_GIFT_PRVDR_TYPE = A2.[DBSYMBOL] AND A2.[TableName] = 'ASSETS' and A2.[COLUMNNAME] = 'S_GIFT_PRVDR_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
