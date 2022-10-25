CREATE VIEW [Alkami_restricted].[Vw_sas_bank_account]
AS
   SELECT
      x.[payment_method_id],
      x.[bank_name],
      x.[bank_party_id],
      x.[type_enum_id],
      x.[routing_number],
      x.[account_number],
      x.[last_check_number],
      x.[nacha_immed_dest],
      x.[nacha_immed_orig],
      x.[nacha_immed_dest_name],
      x.[nacha_immed_orig_name],
      x.[nacha_company_name],
      x.[nacha_discr_data],
      x.[nacha_company_id],
      x.[nacha_odfi_id],
      x.[nacha_entry_description],
      x.[nacha_add_new_line],
      x.[nacha_add_offset_record],
      x.[pos_pay_bank_number],
      x.[pos_pay_format_enum_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[bank_account] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
