CREATE VIEW [Alkami_restricted].[Vw_work_effort_category_appl]
AS
   SELECT
      x.[work_effort_id],
      x.[work_effort_category_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[work_effort_category_appl] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
