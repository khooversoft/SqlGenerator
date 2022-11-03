CREATE VIEW [Alkami_pii].[Vw_instance_image_type_env]
AS
   SELECT
      x.[image_type_id],
      x.[env_name],
      x.[env_value],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[instance_image_type_env] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
