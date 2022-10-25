CREATE VIEW [Alkami_restricted].[Vw_sas_artifact_hit_bin]
AS
   SELECT
      x.[hit_bin_id],
      x.[artifact_type],
      x.[artifact_sub_type],
      x.[artifact_name],
      x.[server_ip_address],
      x.[server_host_name],
      x.[bin_start_date_time],
      x.[bin_end_date_time],
      x.[hit_count],
      x.[total_time_millis],
      x.[total_squared_time],
      x.[min_time_millis],
      x.[max_time_millis],
      x.[slow_hit_count],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[artifact_hit_bin] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
