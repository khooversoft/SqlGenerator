CREATE VIEW [Alkami].[Vw_user_preference]
AS
   SELECT
      x.[user_id],
      x.[preference_key],
      x.[preference_value],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[user_preference] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
