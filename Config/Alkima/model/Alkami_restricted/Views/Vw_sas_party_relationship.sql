CREATE VIEW [Alkami_restricted].[Vw_sas_party_relationship]
AS
   SELECT
      x.[party_relationship_id],
      x.[relationship_type_enum_id],
      x.[from_party_id],
      x.[from_role_type_id],
      x.[to_party_id],
      x.[to_role_type_id],
      x.[from_date],
      x.[thru_date],
      x.[status_id],
      x.[comments],
      x.[relationship_name],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[party_relationship] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
