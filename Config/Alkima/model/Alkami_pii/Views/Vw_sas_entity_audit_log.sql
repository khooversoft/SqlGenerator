CREATE VIEW [Alkami_pii].[Vw_sas_entity_audit_log]
AS
   SELECT
      x.[audit_history_seq_id],
      x.[changed_entity_name],
      x.[changed_field_name],
      x.[pk_primary_value],
      x.[pk_secondary_value],
      x.[pk_rest_combined_value],
      x.[old_value_text],
      x.[new_value_text],
      x.[change_reason],
      x.[changed_date],
      x.[changed_by_user_id],
      x.[changed_in_visit_id],
      x.[artifact_stack],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[entity_audit_log] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
