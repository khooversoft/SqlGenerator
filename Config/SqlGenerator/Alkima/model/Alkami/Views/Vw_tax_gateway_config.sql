CREATE VIEW [Alkami].[Vw_tax_gateway_config]
AS
   SELECT
      x.[tax_gateway_config_id],
      x.[tax_gateway_type_enum_id],
      x.[description],
      x.[calculate_service_name],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[tax_gateway_config] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
