CREATE VIEW [Alkami_restricted].[Vw_payment_gateway_config]
AS
   SELECT
      x.[payment_gateway_config_id],
      x.[payment_gateway_type_enum_id],
      x.[description],
      x.[authorize_service_name],
      x.[capture_service_name],
      x.[release_service_name],
      x.[refund_service_name],
      x.[details_service_name],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[payment_gateway_config] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
