CREATE VIEW [Alkami_restricted].[Vw_sas_settlement_term]
AS
   SELECT
      x.[settlement_term_id],
      x.[term_type_enum_id],
      x.[description],
      x.[term_value],
      x.[term_value_uom_id],
      x.[order_pmt_service_register_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[settlement_term] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
