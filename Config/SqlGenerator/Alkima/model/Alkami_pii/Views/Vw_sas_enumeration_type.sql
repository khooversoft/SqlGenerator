CREATE VIEW [Alkami_pii].[Vw_sas_enumeration_type]
AS
   SELECT
      x.[enum_type_id],
      x.[description],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[enumeration_type] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
