CREATE VIEW [Alkami_restricted].[Vw_form_config_field]
AS
   SELECT
      x.[form_config_id],
      x.[field_name],
      x.[position_index],
      x.[position_sequence],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[form_config_field] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
