CREATE VIEW [Alkami].[Vw_sas_payment_plan]
AS
   SELECT
      x.[payment_plan_id],
      x.[from_payment_method_id],
      x.[to_payment_method_id],
      x.[amount_type_enum_id],
      x.[fixed_amount],
      x.[date_type_enum_id],
      x.[day_of_month],
      x.[order_id],
      x.[from_date],
      x.[to_date],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[payment_plan] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
