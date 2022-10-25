CREATE VIEW [Alkami_restricted].[Vw_artifact_authz_failure]
AS
   SELECT
      x.[failure_id],
      x.[artifact_name],
      x.[artifact_type_enum_id],
      x.[authz_action_enum_id],
      x.[user_id],
      x.[failure_date],
      x.[is_deny],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[artifact_authz_failure] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
