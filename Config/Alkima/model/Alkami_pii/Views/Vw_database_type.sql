CREATE VIEW [Alkami_pii].[Vw_database_type]
AS
   SELECT
      x.[database_type_id],
      x.[description],
      x.[conf_name],
      x.[create_service],
      x.[check_service],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[database_type] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
