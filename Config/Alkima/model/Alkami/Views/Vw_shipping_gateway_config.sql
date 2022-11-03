CREATE VIEW [Alkami].[Vw_shipping_gateway_config]
AS
   SELECT
      x.[shipping_gateway_config_id],
      x.[shipping_gateway_type_enum_id],
      x.[description],
      x.[get_order_rate_service_name],
      x.[get_shipping_rates_bulk_name],
      x.[get_auto_package_info_name],
      x.[get_rate_service_name],
      x.[request_labels_service_name],
      x.[refund_labels_service_name],
      x.[track_labels_service_name],
      x.[validate_address_service_name],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[shipping_gateway_config] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
