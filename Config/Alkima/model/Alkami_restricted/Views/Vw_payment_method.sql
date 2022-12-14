CREATE VIEW [Alkami_restricted].[Vw_payment_method]
AS
   SELECT
      x.[payment_method_id],
      x.[payment_method_type_enum_id],
      x.[purpose_enum_id],
      x.[owner_party_id],
      x.[description],
      x.[from_date],
      x.[thru_date],
      x.[thru_date_set_auto],
      x.[opened_date],
      x.[title_on_account],
      HASHBYTE('SHA2_256', x.[first_name_on_account]),
      HASHBYTE('SHA2_256', x.[middle_name_on_account]),
      x.[last_name_on_account],
      x.[suffix_on_account],
      x.[company_name_on_account],
      x.[ledger_balance],
      x.[available_balance],
      x.[balance_date],
      x.[loan_payment_amount],
      x.[loan_payment_period_uom_id],
      x.[currency_uom_id],
      x.[postal_contact_mech_id],
      x.[telecom_contact_mech_id],
      x.[email_contact_mech_id],
      x.[gateway_cim_id],
      x.[payment_gateway_config_id],
      x.[image_url],
      x.[trust_level_enum_id],
      x.[payment_fraud_evidence_id],
      x.[gl_account_id],
      x.[fin_account_id],
      x.[original_payment_method_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[payment_method] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
