CREATE VIEW [Alkami].[Vw_geo]
AS
   SELECT
      x.[geo_id],
      x.[geo_type_enum_id],
      x.[geo_name],
      x.[geo_name_local],
      x.[geo_code_alpha2],
      x.[geo_code_alpha3],
      x.[geo_code_numeric],
      x.[well_known_text],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[geo] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
