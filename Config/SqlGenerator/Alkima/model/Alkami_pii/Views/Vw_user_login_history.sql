CREATE VIEW [Alkami_pii].[Vw_user_login_history]
AS
   SELECT
      x.[user_id],
      x.[from_date],
      x.[thru_date],
      x.[visit_id],
      HASHBYTE('SHA2_256', x.[password_used]),
      x.[successful_login],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[user_login_history] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
