CREATE VIEW [Alkami].[Vw_sas_uom_conversion]
AS
   SELECT
      x.[uom_conversion_id],
      x.[uom_id],
      x.[to_uom_id],
      x.[from_date],
      x.[thru_date],
      x.[conversion_factor],
      x.[conversion_offset],
      x.[purpose_enum_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[uom_conversion] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
