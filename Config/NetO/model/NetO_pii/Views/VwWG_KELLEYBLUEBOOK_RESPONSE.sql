-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwWG_KELLEYBLUEBOOK_RESPONSE]
AS
   SELECT
      x.[LNUM],
      x.[DBID],
      x.[RESPONSE_ID],
      x.[VALUATION_DATE],
      x.[TYPICALPRICE_VAL],
      x.[TRADEFAIR_VAL],
      x.[TRADEGOOD_VAL],
      x.[TRADEVERYGOOD_VAL],
      x.[TRADEEXCELLENT_VAL],
      x.[AUCTIONFAIR_VAL],
      x.[AUCTIONGOOD_VAL],
      x.[AUCTIONVERYGOOD_VAL],
      x.[AUCTIONEXCELLENT_VAL],
      x.[MSRP],
      x.[VEHICLEMILEAGE],
      x.[STATUS_CODE],
      x.[STATUS_MESSAGE],
      x.[VEHICLE_ID],
      x.[TRADE_IN_VAL],
      x.[RETAIL_VAL],
      x.[WHOLESALE_VAL],
      x.[INVOICE_VAL],
      x.[CYLINDERS],
      x.[CC],
      x.[STROKE],
      x.[CATEGORY],
      x.[S_GENERIC_BODY_STYLE],
      A0.Descript AS [S_GENERIC_BODY_STYLEDescription]
   FROM [clt_NetO].[WG_KELLEYBLUEBOOK_RESPONSE] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_GENERIC_BODY_STYLE = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_KELLEYBLUEBOOK_RESPONSE' and A0.[COLUMNNAME] = 'S_GENERIC_BODY_STYLE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
