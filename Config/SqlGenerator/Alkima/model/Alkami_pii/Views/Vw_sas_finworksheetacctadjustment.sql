CREATE VIEW [Alkami_pii].[Vw_sas_finworksheetacctadjustment]
AS
   SELECT
      x.[financial_worksheet_id],
      x.[account_id],
      x.[from_date],
      x.[thru_date],
      x.[adjuster_user_id],
      x.[adjustment_reason_enum_id],
      x.[adjustment_note],
      x.[secured],
      x.[include],
      x.[adjusted_balance],
      x.[adjusted_payment],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[finworksheetacctadjustment] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
