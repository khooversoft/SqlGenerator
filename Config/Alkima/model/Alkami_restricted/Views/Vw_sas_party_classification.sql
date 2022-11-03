CREATE VIEW [Alkami_restricted].[Vw_sas_party_classification]
AS
   SELECT
      x.[party_classification_id],
      x.[classification_type_enum_id],
      x.[parent_classification_id],
      x.[description],
      x.[standard_code],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[party_classification] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
