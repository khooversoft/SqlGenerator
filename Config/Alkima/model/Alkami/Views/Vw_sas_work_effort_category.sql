CREATE VIEW [Alkami].[Vw_sas_work_effort_category]
AS
   SELECT
      x.[work_effort_category_id],
      x.[description],
      x.[owner_party_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[work_effort_category] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
