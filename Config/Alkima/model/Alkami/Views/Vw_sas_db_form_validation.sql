CREATE VIEW [Alkami].[Vw_sas_db_form_validation]
AS
   SELECT
      x.[validation_id],
      x.[form_id],
      x.[field_name],
      x.[sequence_num],
      x.[message_type_enum_id],
      x.[message_key],
      x.[validate_expression],
      x.[validate_service_register_id],
      x.[disabled],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[db_form_validation] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
