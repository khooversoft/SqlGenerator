CREATE VIEW [Alkami].[Vw_financial_worksheet_account]
AS
   SELECT
      x.[financial_worksheet_id],
      x.[account_id],
      x.[status_id],
      x.[account_type_enum_id],
      x.[category_enum_id],
      HASHBYTE('SHA2_256', x.[account_number]),
      x.[creditor_party_id],
      x.[creditor_name],
      x.[subcode],
      x.[open_date],
      x.[closed_date],
      x.[remarks],
      x.[balance],
      x.[payment],
      x.[secured],
      x.[include],
      x.[created_by_user_id],
      x.[created_on],
      x.[payment_status_enum_id],
      x.[payment_frequency_enum_id],
      x.[creditor_code],
      x.[last_updated_date],
      x.[credit_limit],
      x.[highest_amount_owed],
      x.[available_credit],
      x.[has_bankruptcy],
      x.[number_of_delinquencies],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[financial_worksheet_account] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
