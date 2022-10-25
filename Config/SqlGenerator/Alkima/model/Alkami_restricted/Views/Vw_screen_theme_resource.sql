CREATE VIEW [Alkami_restricted].[Vw_screen_theme_resource]
AS
   SELECT
      x.[screen_theme_id],
      x.[sequence_num],
      x.[resource_type_enum_id],
      x.[resource_value],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[screen_theme_resource] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
