CREATE VIEW [Alkami_pii].[Vw_product_category_member]
AS
   SELECT
      x.[product_category_id],
      x.[product_id],
      x.[from_date],
      x.[thru_date],
      x.[comments],
      x.[sequence_num],
      x.[quantity],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[product_category_member] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
