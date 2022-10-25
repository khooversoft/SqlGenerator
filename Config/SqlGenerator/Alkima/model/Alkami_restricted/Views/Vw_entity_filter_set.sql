CREATE VIEW [Alkami_restricted].[Vw_entity_filter_set]
AS
   SELECT
      x.[entity_filter_set_id],
      x.[description],
      x.[apply_cond],
      x.[allow_missing_alias],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[entity_filter_set] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
