-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwWG_ASSET_VHCL_VALUATION]
AS
   SELECT
      x.[LNUM],
      x.[ASSETID],
      x.[VALUATION_CNTR],
      x.[S_VALUATION_SOURCE],
      A0.[Descript] AS [S_VALUATION_SOURCE_X],
      x.[VALUATION_RESPONSE_ID],
      x.[ACTIVE_YN],
      x.[ELECTRONIC_YN],
      x.[MILEAGE_ADJ],
      x.[DEALER_OPTS_ADJ],
      x.[MANUFACTURER_OPTS_ADJ],
      x.[BOOK_EDITION],
      HASHBYTES('SHA2_256', x.[REGION]) AS [REGION],
      x.[S_CLEAN_LEVEL],
      A1.[Descript] AS [S_CLEAN_LEVEL_X],
      x.[S_USE_FOR_LOAN_VAL],
      A2.[Descript] AS [S_USE_FOR_LOAN_VAL_X],
      x.[COLL_TRADE_BAM_VALUE],
      x.[COLL_LOAN_BAM_VALUE],
      x.[COLL_RETAIL_BAM_VALUE],
      x.[TOTAL_ADJUSTED_VALUE],
      x.[MILEAGE_YN],
      x.[ADJUSTED_VALUE],
      x.[OPTIONS_VALUE],
      HASHBYTES('SHA2_256', CAST(x.[ENGINE_PRICING] AS NVARCHAR(50))) AS [ENGINE_PRICING],
      x.[PRIMARYVALUATION_YN],
      x.[MFG_REBATE],
      x.[DLR_REBATE],
      x.[MFG_OPT_PRCNG],
      x.[DLR_OPT_PRCNG],
      x.[INVOICE_PRC],
      x.[TOTL_ADJSTD_VAL_OVRD]
   FROM [clt_NetO].[WG_ASSET_VHCL_VALUATION] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_VALUATION_SOURCE] = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_ASSET_VHCL_VALUATION' and A0.[COLUMNNAME] = 'S_VALUATION_SOURCE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_CLEAN_LEVEL] = A1.[DBSYMBOL] AND A1.[TableName] = 'WG_ASSET_VHCL_VALUATION' and A1.[COLUMNNAME] = 'S_CLEAN_LEVEL'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[S_USE_FOR_LOAN_VAL] = A2.[DBSYMBOL] AND A2.[TableName] = 'WG_ASSET_VHCL_VALUATION' and A2.[COLUMNNAME] = 'S_USE_FOR_LOAN_VAL'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
