CREATE VIEW [Alkami].[Vw_sas_market_segment]
AS
   SELECT
      x.[market_segment_id],
      x.[market_segment_type_enum_id],
      x.[type_sequence_num],
      x.[parent_market_segment_id],
      x.[description],
      x.[product_store_id],
      x.[owner_party_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[market_segment] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
