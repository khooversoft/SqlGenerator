CREATE VIEW [Alkami_restricted].[Vw_sas_service_job_run]
AS
   SELECT
      x.[job_run_id],
      x.[job_name],
      x.[user_id],
      x.[parameters],
      x.[results],
      x.[messages],
      x.[has_error],
      x.[errors],
      x.[host_address],
      x.[host_name],
      x.[run_thread],
      x.[start_time],
      x.[end_time],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[service_job_run] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
