CREATE VIEW [Alkami_pii].[Vw_item_type_gl_account]
AS
   SELECT
      x.[item_type_enum_id],
      x.[organization_party_id],
      x.[direction],
      x.[gl_account_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[item_type_gl_account] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
