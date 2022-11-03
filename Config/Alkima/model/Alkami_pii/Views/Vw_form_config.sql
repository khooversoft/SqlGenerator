CREATE VIEW [Alkami_pii].[Vw_form_config]
AS
   SELECT
      x.[form_config_id],
      x.[description],
      x.[form_location],
      x.[config_type_enum_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[form_config] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
