CREATE VIEW [Alkami_pii].[Vw_sas_uom]
AS
   SELECT
      x.[uom_id],
      x.[uom_type_enum_id],
      x.[abbreviation],
      x.[description],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[uom] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
