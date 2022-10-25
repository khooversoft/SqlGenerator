CREATE VIEW [Alkami].[Vw_agreement_signature]
AS
   SELECT
      x.[agreement_id],
      x.[party_id],
      x.[signature_date],
      x.[agreement_content_id],
      x.[visit_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[agreement_signature] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
