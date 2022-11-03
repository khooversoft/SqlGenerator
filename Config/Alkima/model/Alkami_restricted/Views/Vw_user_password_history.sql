CREATE VIEW [Alkami_restricted].[Vw_user_password_history]
AS
   SELECT
      x.[user_id],
      x.[from_date],
      x.[password],
      x.[password_salt],
      x.[password_hash_type],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[user_password_history] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
