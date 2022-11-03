CREATE VIEW [Alkami_pii].[Vw_product_category]
AS
   SELECT
      x.[product_category_id],
      x.[pseudo_id],
      x.[product_category_type_enum_id],
      x.[category_name],
      x.[description],
      x.[owner_party_id],
      x.[display_type_enum_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[product_category] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
