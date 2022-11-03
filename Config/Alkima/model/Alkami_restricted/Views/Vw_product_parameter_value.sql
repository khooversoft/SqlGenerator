CREATE VIEW [Alkami_restricted].[Vw_product_parameter_value]
AS
   SELECT
      x.[product_parameter_value_id],
      x.[product_parameter_id],
      x.[product_parameter_set_id],
      x.[market_segment_id],
      x.[product_parameter_option_id],
      x.[parameter_value],
      x.[uom_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[product_parameter_value] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
