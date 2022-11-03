CREATE VIEW [Alkami].[Vw_sas_financial_account_type]
AS
   SELECT
      x.[fin_account_type_id],
      x.[parent_type_id],
      x.[description],
      x.[is_refundable],
      x.[account_code_length],
      x.[require_pin_code],
      x.[pin_code_length],
      x.[account_valid_days],
      x.[auth_valid_days],
      x.[replenish_min_balance],
      x.[replenish_threshold],
      x.[replenish_method_enum_id],
      x.[replenish_type_enum_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[financial_account_type] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
