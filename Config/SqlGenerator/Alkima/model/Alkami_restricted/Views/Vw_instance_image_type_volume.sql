CREATE VIEW [Alkami_restricted].[Vw_instance_image_type_volume]
AS
   SELECT
      x.[image_type_id],
      x.[mount_point],
      x.[volume_name],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[instance_image_type_volume] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
