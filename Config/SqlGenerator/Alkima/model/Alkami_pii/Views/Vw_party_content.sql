CREATE VIEW [Alkami_pii].[Vw_party_content]
AS
   SELECT
      x.[party_content_id],
      x.[party_id],
      x.[content_location],
      x.[party_content_type_enum_id],
      x.[description],
      x.[content_date],
      x.[viewed_date],
      x.[user_id],
      x.[party_id_type_enum_id],
      x.[original_party_content_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[party_content] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
