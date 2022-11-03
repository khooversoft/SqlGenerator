CREATE VIEW [Alkami].[Vw_sas_product_db_form]
AS
   SELECT
      x.[product_db_form_id],
      x.[product_id],
      x.[form_id],
      x.[product_form_type_enum_id],
      x.[sequence_num],
      x.[role_type_id],
      x.[market_segment_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[product_db_form] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
