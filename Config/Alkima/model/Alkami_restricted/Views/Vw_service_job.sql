CREATE VIEW [Alkami_restricted].[Vw_service_job]
AS
   SELECT
      x.[job_name],
      x.[description],
      x.[service_name],
      x.[transaction_timeout],
      x.[topic],
      x.[local_only],
      x.[cron_expression],
      x.[from_date],
      x.[thru_date],
      x.[repeat_count],
      x.[paused],
      x.[expire_lock_time],
      x.[min_retry_time],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[service_job] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
