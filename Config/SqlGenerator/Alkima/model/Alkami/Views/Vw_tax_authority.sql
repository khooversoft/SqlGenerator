CREATE VIEW [Alkami].[Vw_tax_authority]
AS
   SELECT
      x.[tax_authority_id],
      x.[tax_authority_type_enum_id],
      x.[description],
      x.[tax_auth_geo_id],
      x.[tax_auth_party_id],
      x.[require_tax_id_for_exemption],
      x.[tax_id_format_pattern],
      x.[include_tax_in_price],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[tax_authority] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
