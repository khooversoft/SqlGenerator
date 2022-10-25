CREATE VIEW [Alkami_pii].[Vw_sas_artifact_hit]
AS
   SELECT
      x.[hit_id],
      x.[visit_id],
      x.[user_id],
      x.[artifact_type],
      x.[artifact_sub_type],
      x.[artifact_name],
      x.[parameter_string],
      x.[start_date_time],
      x.[running_time_millis],
      x.[is_slow_hit],
      x.[output_size],
      x.[was_error],
      x.[error_message],
      x.[request_url],
      x.[referrer_url],
      x.[server_ip_address],
      x.[server_host_name],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[artifact_hit] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
