CREATE VIEW [Alkami_pii].[Vw_sas_party_acctg_preference]
AS
   SELECT
      x.[organization_party_id],
      x.[fiscal_year_start_month],
      x.[fiscal_year_start_day],
      x.[real_time_gl_summary],
      x.[hourly_time_period_type_id],
      x.[salary_time_period_type_id],
      x.[tax_form_enum_id],
      x.[payroll_tax_form_enum_id],
      x.[tax_classification_enum_id],
      x.[employer_class_enum_id],
      x.[cogs_method_enum_id],
      x.[base_currency_uom_id],
      x.[local_currency_uom_id],
      x.[invoice_sequence_enum_id],
      x.[invoice_id_prefix],
      x.[use_invoice_id_for_returns],
      x.[order_sequence_enum_id],
      x.[order_id_prefix],
      x.[refund_payment_method_id],
      x.[error_gl_journal_id],
      x.[gl_account_code_mask],
      x.[settlement_term_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[party_acctg_preference] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
