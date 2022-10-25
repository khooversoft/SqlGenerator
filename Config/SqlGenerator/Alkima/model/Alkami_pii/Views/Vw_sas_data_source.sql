CREATE VIEW [Alkami_pii].[Vw_sas_data_source]
AS
   SELECT
      x.[data_source_id],
      x.[data_source_type_enum_id],
      x.[description],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[data_source] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
