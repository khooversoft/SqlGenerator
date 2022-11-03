CREATE VIEW [Alkami].[Vw_sas_product_ruleset]
AS
   SELECT
      x.[ruleset_id],
      x.[product_id],
      x.[from_date],
      x.[thru_date],
      x.[product_store_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[product_ruleset] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
