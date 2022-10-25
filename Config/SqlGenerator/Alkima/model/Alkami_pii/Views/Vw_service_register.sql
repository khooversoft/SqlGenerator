CREATE VIEW [Alkami_pii].[Vw_service_register]
AS
   SELECT
      x.[service_register_id],
      x.[service_type_enum_id],
      x.[description],
      x.[service_name],
      x.[config_parameters],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[service_register] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
