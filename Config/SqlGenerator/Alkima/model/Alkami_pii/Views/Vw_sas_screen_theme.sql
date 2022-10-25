CREATE VIEW [Alkami_pii].[Vw_sas_screen_theme]
AS
   SELECT
      x.[screen_theme_id],
      x.[screen_theme_type_enum_id],
      x.[description],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[screen_theme] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
