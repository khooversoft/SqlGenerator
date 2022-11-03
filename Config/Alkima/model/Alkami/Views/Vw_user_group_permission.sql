CREATE VIEW [Alkami].[Vw_user_group_permission]
AS
   SELECT
      x.[user_group_id],
      x.[user_permission_id],
      x.[from_date],
      x.[thru_date],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[user_group_permission] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
