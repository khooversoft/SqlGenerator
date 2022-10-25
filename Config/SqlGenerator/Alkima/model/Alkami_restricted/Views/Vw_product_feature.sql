CREATE VIEW [Alkami_restricted].[Vw_product_feature]
AS
   SELECT
      x.[product_feature_id],
      x.[product_feature_type_enum_id],
      x.[description],
      x.[number_specified],
      x.[number_uom_id],
      x.[default_amount],
      x.[default_sequence_num],
      x.[abbrev],
      x.[id_code],
      x.[owner_party_id],
      x.[number_per_pallet],
      x.[per_pallet_tier],
      x.[tiers_per_pallet],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[product_feature] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
