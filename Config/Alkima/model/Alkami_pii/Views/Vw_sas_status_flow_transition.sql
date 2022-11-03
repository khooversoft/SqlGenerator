CREATE VIEW [Alkami_pii].[Vw_sas_status_flow_transition]
AS
   SELECT
      x.[status_flow_id],
      x.[status_id],
      x.[to_status_id],
      x.[transition_sequence],
      x.[transition_name],
      x.[condition_expression],
      x.[user_permission_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[status_flow_transition] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
