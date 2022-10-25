CREATE VIEW [Alkami_pii].[Vw_market_segment_condition_set]
AS
   SELECT
      x.[market_segment_id],
      x.[condition_set_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[market_segment_condition_set] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
