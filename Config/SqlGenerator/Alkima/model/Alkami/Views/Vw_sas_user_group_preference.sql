CREATE VIEW [Alkami].[Vw_sas_user_group_preference]
AS
   SELECT
      x.[user_group_id],
      x.[preference_key],
      x.[preference_value],
      x.[group_priority],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[user_group_preference] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
