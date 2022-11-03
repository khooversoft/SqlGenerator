CREATE VIEW [Alkami].[Vw_sas_product_store_agreement]
AS
   SELECT
      x.[product_store_id],
      x.[agreement_id],
      x.[create_service_register_id],
      x.[from_date],
      x.[thru_date],
      x.[sequence_num],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[product_store_agreement] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
