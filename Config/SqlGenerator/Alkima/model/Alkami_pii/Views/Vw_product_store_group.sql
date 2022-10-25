CREATE VIEW [Alkami_pii].[Vw_product_store_group]
AS
   SELECT
      x.[product_store_group_id],
      x.[store_group_type_enum_id],
      x.[description],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[product_store_group] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
