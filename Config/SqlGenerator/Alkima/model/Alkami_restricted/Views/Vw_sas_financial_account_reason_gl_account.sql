CREATE VIEW [Alkami_restricted].[Vw_sas_financial_account_reason_gl_account]
AS
   SELECT
      x.[reason_enum_id],
      x.[organization_party_id],
      x.[gl_account_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[financial_account_reason_gl_account] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
