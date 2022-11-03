CREATE VIEW [Alkami_pii].[Vw_sas_product_parameter_set]
AS
   SELECT
      x.[product_parameter_set_id],
      x.[comments],
      x.[product_id],
      x.[customer_party_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[product_parameter_set] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
