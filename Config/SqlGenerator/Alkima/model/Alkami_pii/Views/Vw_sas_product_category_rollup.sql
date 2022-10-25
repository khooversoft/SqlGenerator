CREATE VIEW [Alkami_pii].[Vw_sas_product_category_rollup]
AS
   SELECT
      x.[product_category_id],
      x.[parent_product_category_id],
      x.[from_date],
      x.[thru_date],
      x.[sequence_num],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[product_category_rollup] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
