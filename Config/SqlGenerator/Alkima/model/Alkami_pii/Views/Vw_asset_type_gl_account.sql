CREATE VIEW [Alkami_pii].[Vw_asset_type_gl_account]
AS
   SELECT
      x.[asset_type_gl_account_id],
      x.[asset_type_enum_id],
      x.[class_enum_id],
      x.[asset_id],
      x.[organization_party_id],
      x.[asset_gl_account_id],
      x.[wip_asset_gl_account_id],
      x.[receipt_gl_account_id],
      x.[issuance_gl_account_id],
      x.[transfer_gl_account_id],
      x.[acc_depreciation_gl_account_id],
      x.[depreciation_gl_account_id],
      x.[profit_gl_account_id],
      x.[loss_gl_account_id],
      x.[receipt_trans_type_enum_id],
      x.[issuance_trans_type_enum_id],
      x.[shrinkage_gl_account_id],
      x.[found_gl_account_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[asset_type_gl_account] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
