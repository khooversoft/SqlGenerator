CREATE VIEW [Alkami].[Vw_sas_artifact_authz]
AS
   SELECT
      x.[artifact_authz_id],
      x.[user_group_id],
      x.[artifact_group_id],
      x.[authz_type_enum_id],
      x.[authz_action_enum_id],
      x.[authz_service_name],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[artifact_authz] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
