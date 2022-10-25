CREATE VIEW [Alkami_restricted].[Vw_artifact_authz_filter]
AS
   SELECT
      x.[artifact_authz_id],
      x.[entity_filter_set_id],
      x.[apply_cond],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[artifact_authz_filter] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
