CREATE VIEW [Alkami_restricted].[Vw_db_resource]
AS
   SELECT
      x.[resource_id],
      x.[parent_resource_id],
      x.[filename],
      x.[is_file],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[db_resource] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
