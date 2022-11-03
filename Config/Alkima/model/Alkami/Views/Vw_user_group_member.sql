CREATE VIEW [Alkami].[Vw_user_group_member]
AS
   SELECT
      x.[user_group_id],
      x.[user_id],
      x.[from_date],
      x.[thru_date],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[user_group_member] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
