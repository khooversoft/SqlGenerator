CREATE VIEW [Alkami_restricted].[Vw_sas_db_resource_file_history]
AS
   SELECT
      x.[resource_id],
      x.[version_name],
      x.[previous_version_name],
      x.[version_date],
      x.[user_id],
      x.[is_diff],
      x.[file_data],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[db_resource_file_history] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
