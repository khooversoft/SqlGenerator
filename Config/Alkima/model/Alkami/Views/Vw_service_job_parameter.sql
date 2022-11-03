CREATE VIEW [Alkami].[Vw_service_job_parameter]
AS
   SELECT
      x.[job_name],
      x.[parameter_name],
      x.[parameter_value],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[service_job_parameter] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
