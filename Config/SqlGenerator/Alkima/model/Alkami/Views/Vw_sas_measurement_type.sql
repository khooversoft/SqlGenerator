CREATE VIEW [Alkami].[Vw_sas_measurement_type]
AS
   SELECT
      x.[measurement_type_id],
      x.[description],
      x.[has_value],
      x.[uom_type_enum_id],
      x.[enum_type_id],
      x.[product_meter_type_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[measurement_type] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
