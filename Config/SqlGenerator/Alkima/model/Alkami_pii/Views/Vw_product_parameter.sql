CREATE VIEW [Alkami_pii].[Vw_product_parameter]
AS
   SELECT
      x.[product_parameter_id],
      x.[description],
      x.[uom_dimension_type_id],
      x.[product_id_type_enum_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[product_parameter] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
