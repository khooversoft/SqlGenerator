CREATE VIEW [Alkami].[Vw_agreement]
AS
   SELECT
      x.[agreement_id],
      x.[agreement_type_enum_id],
      x.[status_id],
      x.[organization_party_id],
      x.[organization_role_type_id],
      x.[other_party_id],
      x.[other_role_type_id],
      x.[agreement_date],
      x.[from_date],
      x.[thru_date],
      x.[description],
      x.[currency_uom_id],
      x.[is_template],
      x.[template_agreement_id],
      x.[text_data],
      x.[signable_option_type_enum_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[agreement] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
