CREATE VIEW [Alkami_restricted].[Vw_rate_amount]
AS
   SELECT
      x.[rate_amount_id],
      x.[from_date],
      x.[thru_date],
      x.[rate_type_enum_id],
      x.[rate_purpose_enum_id],
      x.[rate_currency_uom_id],
      x.[time_period_uom_id],
      x.[work_effort_id],
      x.[party_id],
      x.[work_type_enum_id],
      x.[pay_grade_id],
      x.[empl_position_class_id],
      x.[rate_amount],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[rate_amount] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
