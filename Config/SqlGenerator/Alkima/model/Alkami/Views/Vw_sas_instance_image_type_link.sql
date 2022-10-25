CREATE VIEW [Alkami].[Vw_sas_instance_image_type_link]
AS
   SELECT
      x.[image_type_id],
      x.[instance_name],
      x.[alias_name],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[instance_image_type_link] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
