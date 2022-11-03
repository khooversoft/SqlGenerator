CREATE VIEW [Alkami].[Vw_sas_product_store_entry]
AS
   SELECT
      x.[entry_id],
      x.[condition_type_enum_id],
      x.[condition_value],
      x.[condition_expression],
      x.[product_store_id],
      x.[screen_path],
      x.[creation_date],
      x.[sequence_num],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[product_store_entry] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
