CREATE VIEW [Alkami_pii].[Vw_artifact_group_member]
AS
   SELECT
      x.[artifact_group_id],
      x.[artifact_name],
      x.[artifact_type_enum_id],
      x.[name_is_pattern],
      x.[inherit_authz],
      x.[filter_map],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[artifact_group_member] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
