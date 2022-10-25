CREATE VIEW [Alkami].[Vw_service_job_run_lock]
AS
   SELECT
      x.[job_name],
      x.[job_run_id],
      x.[last_run_time],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[service_job_run_lock] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
