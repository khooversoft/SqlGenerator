CREATE VIEW [Alkami_restricted].[Vw_service_parameter_semaphore]
AS
   SELECT
      x.[service_name],
      x.[parameter_value],
      x.[lock_thread],
      x.[lock_time],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[service_parameter_semaphore] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
