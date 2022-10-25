CREATE VIEW [Alkami_restricted].[Vw_product_feature_iactn]
AS
   SELECT
      x.[product_feature_id],
      x.[to_product_feature_id],
      x.[iactn_type_enum_id],
      x.[product_id],
      x.[quantity],
      x.[amount],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[product_feature_iactn] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
