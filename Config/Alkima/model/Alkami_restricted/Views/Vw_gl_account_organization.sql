CREATE VIEW [Alkami_restricted].[Vw_gl_account_organization]
AS
   SELECT
      x.[gl_account_id],
      x.[organization_party_id],
      x.[posted_balance],
      x.[balance_last_updated],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[gl_account_organization] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
