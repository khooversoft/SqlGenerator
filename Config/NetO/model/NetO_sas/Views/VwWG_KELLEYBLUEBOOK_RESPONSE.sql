-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwWG_KELLEYBLUEBOOK_RESPONSE]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[DBID] AS [DBID],
      x.[RESPONSE_ID] AS [RESPONSE_ID],
      x.[VALUATION_DATE] AS [VALUATION_DATE],
      x.[TYPICALPRICE_VAL] AS [TYPICALPRICE_VAL],
      x.[TRADEFAIR_VAL] AS [TRADEFAIR_VAL],
      x.[TRADEGOOD_VAL] AS [TRADEGOOD_VAL],
      x.[TRADEVERYGOOD_VAL] AS [TRADEVERYGOOD_VAL],
      x.[TRADEEXCELLENT_VAL] AS [TRADEEXCELLENT_VAL],
      x.[AUCTIONFAIR_VAL] AS [AUCTIONFAIR_VAL],
      x.[AUCTIONGOOD_VAL] AS [AUCTIONGOOD_VAL],
      x.[AUCTIONVERYGOOD_VAL] AS [AUCTIONVERYGOOD_VAL],
      x.[AUCTIONEXCELLENT_VAL] AS [AUCTIONEXCELLENT_VAL],
      x.[MSRP] AS [MSRP],
      x.[VEHICLEMILEAGE] AS [VEHICLEMILEAGE],
      x.[STATUS_CODE] AS [STATUS_CODE],
      x.[STATUS_MESSAGE] AS [STATUS_MESSAGE],
      x.[VEHICLE_ID] AS [VEHICLE_ID],
      x.[TRADE_IN_VAL] AS [TRADE_IN_VAL],
      x.[RETAIL_VAL] AS [RETAIL_VAL],
      x.[WHOLESALE_VAL] AS [WHOLESALE_VAL],
      x.[INVOICE_VAL] AS [INVOICE_VAL],
      x.[CYLINDERS] AS [CYLINDERS],
      x.[CC] AS [CC],
      x.[STROKE] AS [STROKE],
      x.[CATEGORY] AS [CATEGORY],
      x.[S_GENERIC_BODY_STYLE] AS [S_GENERIC_BODY_STYLE],
      A0.Descript AS [GENERIC_BODY_STYLE]
   FROM [clt_NetO].[WG_KELLEYBLUEBOOK_RESPONSE] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_GENERIC_BODY_STYLE = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_KELLEYBLUEBOOK_RESPONSE' and A0.[COLUMNNAME] = 'S_GENERIC_BODY_STYLE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
