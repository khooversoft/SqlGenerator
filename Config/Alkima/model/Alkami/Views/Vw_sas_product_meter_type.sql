CREATE VIEW [Alkami].[Vw_sas_product_meter_type]
AS
   SELECT
      x.[product_meter_type_id],
      x.[description],
      x.[default_uom_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[product_meter_type] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
