-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwWG_CNS_LOAN_APPLICATION]
AS
   SELECT
      x.[LNUM],
      x.[CID_BRANCH],
      x.[S_BUSINESS_CHANNEL],
      A0.Descript AS [S_BUSINESS_CHANNEL_Description],
      x.[S_LOAN_TYPE],
      A1.Descript AS [S_LOAN_TYPE_Description],
      x.[S_LOAN_CATEGORY],
      A2.Descript AS [S_LOAN_CATEGORY_Description],
      x.[S_REFERRAL_SOURCE],
      A3.Descript AS [S_REFERRAL_SOURCE_Description],
      x.[S_LOAN_PURPOSE],
      A4.Descript AS [S_LOAN_PURPOSE_Description],
      x.[EMP_LOAN_YN],
      x.[REG_O_LOAN_YN],
      x.[TSWE_EXPECTED_YN],
      x.[TSWE_EXISTS_YN],
      x.[TSWE_GUIDELINES_MET_YN],
      x.[PRE_APPR_REQ_YN],
      x.[PRE_APPR_DATE],
      x.[MBA_YN],
      x.[IS_PERSONALUSE_YN],
      x.[S_PRIMARY_COLLATERAL_TYPE],
      A5.Descript AS [S_PRIMARY_COLLATERAL_TYPE_Description],
      x.[COLLATERAL_STATE],
      x.[VENDOR_VAL_METHOD],
      x.[VALUATION_SOURCE],
      x.[VEHICLE_FUEL_TYPE],
      x.[VEHICLE_MILEAGE],
      x.[CURRENTMODELYR],
      x.[COLLAGEYRS],
      x.[S_TITLE_TRANSFER],
      A6.Descript AS [S_TITLE_TRANSFER_Description],
      x.[S_SECONDARY_COLLATERAL_TYPE],
      A7.Descript AS [S_SECONDARY_COLLATERAL_TYPE_Description]
   FROM [clt_NetO].[WG_CNS_LOAN_APPLICATION] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_BUSINESS_CHANNEL = A0.DBSYMBOL AND A0.[TableName] = 'WG_CNS_LOAN_APPLICATION' and A0.[COLUMNNAME] = 'S_BUSINESS_CHANNEL'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_LOAN_TYPE = A1.DBSYMBOL AND A1.[TableName] = 'WG_CNS_LOAN_APPLICATION' and A1.[COLUMNNAME] = 'S_LOAN_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_LOAN_CATEGORY = A2.DBSYMBOL AND A2.[TableName] = 'WG_CNS_LOAN_APPLICATION' and A2.[COLUMNNAME] = 'S_LOAN_CATEGORY'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.S_REFERRAL_SOURCE = A3.DBSYMBOL AND A3.[TableName] = 'WG_CNS_LOAN_APPLICATION' and A3.[COLUMNNAME] = 'S_REFERRAL_SOURCE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.S_LOAN_PURPOSE = A4.DBSYMBOL AND A4.[TableName] = 'WG_CNS_LOAN_APPLICATION' and A4.[COLUMNNAME] = 'S_LOAN_PURPOSE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A5 on x.S_PRIMARY_COLLATERAL_TYPE = A5.DBSYMBOL AND A5.[TableName] = 'WG_CNS_LOAN_APPLICATION' and A5.[COLUMNNAME] = 'S_PRIMARY_COLLATERAL_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A6 on x.S_TITLE_TRANSFER = A6.DBSYMBOL AND A6.[TableName] = 'WG_CNS_LOAN_APPLICATION' and A6.[COLUMNNAME] = 'S_TITLE_TRANSFER'
      LEFT JOIN [clt_NetO].[SymbolLookup] A7 on x.S_SECONDARY_COLLATERAL_TYPE = A7.DBSYMBOL AND A7.[TableName] = 'WG_CNS_LOAN_APPLICATION' and A7.[COLUMNNAME] = 'S_SECONDARY_COLLATERAL_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
