CREATE VIEW [Alkami].[Vw_instance_image_type]
AS
   SELECT
      x.[image_type_id],
      x.[description],
      x.[default_init_command],
      x.[default_network_mode],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[instance_image_type] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
