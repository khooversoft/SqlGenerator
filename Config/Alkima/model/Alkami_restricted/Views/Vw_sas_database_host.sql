CREATE VIEW [Alkami_restricted].[Vw_sas_database_host]
AS
   SELECT
      x.[database_host_id],
      x.[database_type_id],
      x.[host_address],
      x.[host_port],
      x.[instance_address],
      x.[admin_user],
      x.[admin_password],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[database_host] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
