CREATE VIEW [Alkami].[Vw_sas_party_identification]
AS
   SELECT
      x.[party_id],
      x.[party_id_type_enum_id],
      x.[id_value],
      x.[issued_by],
      x.[issued_by_party_id],
      x.[expire_date],
      x.[issue_date],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[party_identification] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
