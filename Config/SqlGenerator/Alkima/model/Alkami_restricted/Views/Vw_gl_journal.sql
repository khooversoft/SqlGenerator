CREATE VIEW [Alkami_restricted].[Vw_gl_journal]
AS
   SELECT
      x.[gl_journal_id],
      x.[gl_journal_type_enum_id],
      x.[gl_journal_name],
      x.[organization_party_id],
      x.[is_posted],
      x.[posted_date],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[gl_journal] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
