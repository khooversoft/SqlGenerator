CREATE VIEW [Alkami].[Vw_product_store_setting]
AS
   SELECT
      x.[product_store_id],
      x.[setting_type_enum_id],
      x.[from_date],
      x.[thru_date],
      x.[setting_value],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[product_store_setting] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
