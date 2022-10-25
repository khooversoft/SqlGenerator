CREATE VIEW [Alkami_restricted].[Vw_sas_agreement_content]
AS
   SELECT
      x.[agreement_content_id],
      x.[agreement_id],
      x.[content_location],
      x.[content_type_enum_id],
      x.[description],
      x.[content_date],
      x.[user_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[agreement_content] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
