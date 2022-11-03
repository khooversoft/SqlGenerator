CREATE VIEW [Alkami_pii].[Vw_sas_instance_image]
AS
   SELECT
      x.[instance_image_id],
      x.[image_type_id],
      x.[host_type_id],
      x.[image_name],
      x.[registry_location],
      x.[username],
      HASHBYTE('SHA2_256', x.[password]),
      x.[email_address],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[instance_image] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
