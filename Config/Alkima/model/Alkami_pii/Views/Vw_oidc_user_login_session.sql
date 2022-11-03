CREATE VIEW [Alkami_pii].[Vw_oidc_user_login_session]
AS
   SELECT
      x.[user_id],
      x.[session_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[oidc_user_login_session] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
