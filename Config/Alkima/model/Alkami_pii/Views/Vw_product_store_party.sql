CREATE VIEW [Alkami_pii].[Vw_product_store_party]
AS
   SELECT
      x.[product_store_id],
      x.[party_id],
      x.[role_type_id],
      x.[from_date],
      x.[thru_date],
      x.[sequence_num],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[product_store_party] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
