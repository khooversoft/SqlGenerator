CREATE VIEW [Alkami_pii].[Vw_sas_carrier_shipment_method]
AS
   SELECT
      x.[carrier_party_id],
      x.[shipment_method_enum_id],
      x.[description],
      x.[sequence_num],
      x.[carrier_service_code],
      x.[sca_code],
      x.[gateway_service_code],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[carrier_shipment_method] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
