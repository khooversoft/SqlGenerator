CREATE VIEW [Alkami_pii].[Vw_user_password_history]
AS
   SELECT
      x.[user_id],
      x.[from_date],
      HASHBYTE('SHA2_256', x.[password]),
      HASHBYTE('SHA2_256', x.[password_salt]),
      HASHBYTE('SHA2_256', x.[password_hash_type]),
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[user_password_history] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
