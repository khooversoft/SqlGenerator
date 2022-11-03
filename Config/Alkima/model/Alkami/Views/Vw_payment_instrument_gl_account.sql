CREATE VIEW [Alkami].[Vw_payment_instrument_gl_account]
AS
   SELECT
      x.[payment_instrument_enum_id],
      x.[organization_party_id],
      x.[is_payable],
      x.[gl_account_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[payment_instrument_gl_account] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
