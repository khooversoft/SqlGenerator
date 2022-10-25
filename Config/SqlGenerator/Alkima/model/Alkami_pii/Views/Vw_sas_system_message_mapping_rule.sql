CREATE VIEW [Alkami_pii].[Vw_sas_system_message_mapping_rule]
AS
   SELECT
      x.[ruleset_id],
      x.[rule_seq_id],
      x.[request_field_name],
      x.[internal_field_name],
      x.[internal_field_type],
      x.[internal_field_expression],
      x.[service_register_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[system_message_mapping_rule] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
