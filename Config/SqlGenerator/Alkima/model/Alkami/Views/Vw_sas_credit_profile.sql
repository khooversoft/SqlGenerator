CREATE VIEW [Alkami].[Vw_sas_credit_profile]
AS
   SELECT
      x.[credit_profile_id],
      x.[credit_profile_status],
      x.[party_content_id],
      x.[requesting_party_id],
      x.[pull_type_enum_id],
      x.[credit_bureau],
      x.[risk_model_enum_id],
      x.[created_on],
      x.[has_formatted_text],
      x.[has_pdf],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[credit_profile] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
