CREATE VIEW [Alkami].[Vw_instance_host]
AS
   SELECT
      x.[instance_host_id],
      x.[host_type_id],
      x.[host_protocol],
      x.[host_address],
      x.[admin_port],
      x.[username],
      x.[password],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[instance_host] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
