CREATE VIEW [Alkami_pii].[Vw_sas_market_segment_dimension]
AS
   SELECT
      x.[market_segment_id],
      x.[uom_dimension_type_id],
      x.[uom_id],
      x.[min_value],
      x.[max_value],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[market_segment_dimension] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
