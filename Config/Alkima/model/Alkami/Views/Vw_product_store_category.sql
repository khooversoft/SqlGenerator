CREATE VIEW [Alkami].[Vw_product_store_category]
AS
   SELECT
      x.[product_store_id],
      x.[product_category_id],
      x.[store_category_type_enum_id],
      x.[from_date],
      x.[thru_date],
      x.[sequence_num],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[product_store_category] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
