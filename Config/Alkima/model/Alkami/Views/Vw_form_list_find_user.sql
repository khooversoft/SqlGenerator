CREATE VIEW [Alkami].[Vw_form_list_find_user]
AS
   SELECT
      x.[form_list_find_id],
      x.[user_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[form_list_find_user] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
