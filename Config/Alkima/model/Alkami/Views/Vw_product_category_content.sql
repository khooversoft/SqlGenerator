CREATE VIEW [Alkami].[Vw_product_category_content]
AS
   SELECT
      x.[product_category_content_id],
      x.[product_category_id],
      x.[content_location],
      x.[category_content_type_enum_id],
      x.[product_store_id],
      x.[from_date],
      x.[thru_date],
      x.[locale],
      x.[description],
      x.[sequence_num],
      x.[user_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[product_category_content] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
