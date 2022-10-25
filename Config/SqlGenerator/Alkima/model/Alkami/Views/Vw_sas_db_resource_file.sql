CREATE VIEW [Alkami].[Vw_sas_db_resource_file]
AS
   SELECT
      x.[resource_id],
      x.[mime_type],
      x.[version_name],
      x.[root_version_name],
      x.[file_data],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[db_resource_file] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
