CREATE VIEW [Alkami_restricted].[Vw_gl_account]
AS
   SELECT
      x.[gl_account_id],
      x.[parent_gl_account_id],
      x.[gl_account_type_enum_id],
      x.[gl_account_class_enum_id],
      x.[is_debit],
      x.[is_temporary],
      x.[gl_resource_type_enum_id],
      x.[gl_xbrl_class_enum_id],
      x.[account_code],
      x.[account_name],
      x.[description],
      x.[external_id],
      x.[disallow_posting],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[gl_account] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
