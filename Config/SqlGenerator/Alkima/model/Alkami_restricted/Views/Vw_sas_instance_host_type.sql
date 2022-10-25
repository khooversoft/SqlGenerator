CREATE VIEW [Alkami_restricted].[Vw_sas_instance_host_type]
AS
   SELECT
      x.[host_type_id],
      x.[description],
      x.[init_service],
      x.[start_service],
      x.[stop_service],
      x.[remove_service],
      x.[check_service],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[instance_host_type] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
