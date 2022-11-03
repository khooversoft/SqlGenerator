CREATE VIEW [Alkami_restricted].[Vw_sas_product_uom_dimension]
AS
   SELECT
      x.[product_uom_dimension_id],
      x.[product_id],
      x.[uom_dimension_type_id],
      x.[market_segment_id],
      x.[value],
      x.[uom_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[product_uom_dimension] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
