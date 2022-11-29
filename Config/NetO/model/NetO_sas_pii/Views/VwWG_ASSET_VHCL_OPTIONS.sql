-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwWG_ASSET_VHCL_OPTIONS]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[ASSETID] AS [ASSETID],
      x.[ROWCOUNTER] AS [ROWCOUNTER],
      x.[VALUATION_CNTR] AS [VALUATION_CNTR],
      x.[S_OPTION_TYPE] AS [S_OPTION_TYPE],
      A0.Descript AS [OPTION_TYPE],
      x.[VHCL_OPTION_VALUE] AS [VHCL_OPTION_VALUE],
      x.[SELECTED_YN] AS [SELECTED_YN],
      x.[VHCL_OPTION] AS [VHCL_OPTION],
      x.[OPTIONS_PRICING_VALUE] AS [OPTIONS_PRICING_VALUE],
      x.[VHCL_OPTION_PRICE] AS [VHCL_OPTION_PRICE]
   FROM [clt_NetO].[WG_ASSET_VHCL_OPTIONS] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_OPTION_TYPE = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_ASSET_VHCL_OPTIONS' and A0.[COLUMNNAME] = 'S_OPTION_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
