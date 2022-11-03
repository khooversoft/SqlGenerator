CREATE VIEW [Alkami].[Vw_party_contact_mech]
AS
   SELECT
      x.[party_id],
      x.[contact_mech_id],
      x.[contact_mech_purpose_id],
      x.[from_date],
      x.[thru_date],
      x.[extension],
      x.[comments],
      x.[allow_solicitation],
      x.[used_since],
      x.[used_until],
      x.[verify_code],
      x.[verify_code_date],
      x.[verify_code_attempts],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[party_contact_mech] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
