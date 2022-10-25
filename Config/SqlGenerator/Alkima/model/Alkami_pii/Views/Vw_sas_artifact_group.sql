CREATE VIEW [Alkami_pii].[Vw_sas_artifact_group]
AS
   SELECT
      x.[artifact_group_id],
      x.[description],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[artifact_group] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
