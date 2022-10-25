CREATE VIEW [Alkami_restricted].[Vw_sas_localized_entity_field]
AS
   SELECT
      x.[entity_name],
      x.[field_name],
      x.[pk_value],
      x.[locale],
      x.[localized],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[localized_entity_field] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
