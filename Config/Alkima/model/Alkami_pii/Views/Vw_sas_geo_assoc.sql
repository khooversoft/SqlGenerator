CREATE VIEW [Alkami_pii].[Vw_sas_geo_assoc]
AS
   SELECT
      x.[geo_id],
      x.[to_geo_id],
      x.[geo_assoc_type_enum_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[geo_assoc] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
