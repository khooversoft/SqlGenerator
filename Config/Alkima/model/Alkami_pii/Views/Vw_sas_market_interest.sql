CREATE VIEW [Alkami_pii].[Vw_sas_market_interest]
AS
   SELECT
      x.[product_category_id],
      x.[market_segment_id],
      x.[from_date],
      x.[thru_date],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[market_interest] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
