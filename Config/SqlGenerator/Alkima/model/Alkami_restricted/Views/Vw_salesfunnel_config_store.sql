CREATE VIEW [Alkami_restricted].[Vw_salesfunnel_config_store]
AS
   SELECT
      x.[product_store_id],
      x.[from_date],
      x.[salesfunnel_config_id],
      x.[thru_date],
      x.[sequence_num],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[salesfunnel_config_store] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
