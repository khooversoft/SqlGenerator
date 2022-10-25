CREATE VIEW [Alkami_pii].[Vw_sas_product_content]
AS
   SELECT
      x.[product_content_id],
      x.[product_id],
      x.[content_location],
      x.[product_content_type_enum_id],
      x.[locale],
      x.[product_feature_id],
      x.[product_store_id],
      x.[from_date],
      x.[thru_date],
      x.[description],
      x.[sequence_num],
      x.[user_id],
      x.[db_form_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[product_content] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
