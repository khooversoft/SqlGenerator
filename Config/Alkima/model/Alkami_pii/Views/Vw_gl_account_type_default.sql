CREATE VIEW [Alkami_pii].[Vw_gl_account_type_default]
AS
   SELECT
      x.[gl_account_type_enum_id],
      x.[organization_party_id],
      x.[gl_account_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[gl_account_type_default] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
