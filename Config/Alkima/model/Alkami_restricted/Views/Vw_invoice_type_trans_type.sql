CREATE VIEW [Alkami_restricted].[Vw_invoice_type_trans_type]
AS
   SELECT
      x.[invoice_type_enum_id],
      x.[organization_party_id],
      x.[is_payable],
      x.[acctg_trans_type_enum_id],
      x.[gl_account_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[invoice_type_trans_type] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;