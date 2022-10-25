CREATE VIEW [Alkami_restricted].[Vw_sas_product_dimension_type]
AS
   SELECT
      x.[dimension_type_id],
      x.[description],
      x.[uom_type_enum_id],
      x.[default_uom_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[product_dimension_type] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
