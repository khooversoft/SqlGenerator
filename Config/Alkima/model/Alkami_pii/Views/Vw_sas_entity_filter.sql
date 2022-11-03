CREATE VIEW [Alkami_pii].[Vw_sas_entity_filter]
AS
   SELECT
      x.[entity_filter_id],
      x.[entity_filter_set_id],
      x.[entity_name],
      x.[filter_map],
      x.[comparison_enum_id],
      x.[join_or],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[entity_filter] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
