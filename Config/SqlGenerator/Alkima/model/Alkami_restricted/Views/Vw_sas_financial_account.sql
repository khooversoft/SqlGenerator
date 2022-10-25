CREATE VIEW [Alkami_restricted].[Vw_sas_financial_account]
AS
   SELECT
      x.[fin_account_id],
      x.[fin_account_type_id],
      x.[status_id],
      x.[fin_account_name],
      x.[fin_account_code],
      x.[fin_account_pin],
      x.[organization_party_id],
      x.[owner_party_id],
      x.[post_to_gl_account_id],
      x.[from_date],
      x.[thru_date],
      x.[is_refundable],
      x.[currency_uom_id],
      x.[negative_balance_limit],
      x.[actual_balance],
      x.[available_balance],
      x.[replenish_payment_id],
      x.[replenish_level],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[financial_account] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
