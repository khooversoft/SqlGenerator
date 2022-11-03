CREATE VIEW [Alkami].[Vw_sas_product_agreement_v2]
AS
   SELECT
      x.[product_id],
      x.[agreement_id],
      x.[triggered_status_id],
      x.[required_for_status_id],
      x.[create_service_register_id],
      x.[display_inline],
      x.[sequence_num],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[product_agreement_v2] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
