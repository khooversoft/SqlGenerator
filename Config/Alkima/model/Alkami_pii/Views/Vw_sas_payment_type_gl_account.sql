CREATE VIEW [Alkami_pii].[Vw_sas_payment_type_gl_account]
AS
   SELECT
      x.[payment_type_enum_id],
      x.[organization_party_id],
      x.[is_payable],
      x.[is_applied],
      x.[gl_account_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[payment_type_gl_account] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
