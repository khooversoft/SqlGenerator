CREATE VIEW [Alkami_restricted].[Vw_sas_product_feature_appl]
AS
   SELECT
      x.[product_id],
      x.[product_feature_id],
      x.[from_date],
      x.[thru_date],
      x.[appl_type_enum_id],
      x.[sequence_num],
      x.[amount],
      x.[recurring_amount],
      x.[feature_product_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[product_feature_appl] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
