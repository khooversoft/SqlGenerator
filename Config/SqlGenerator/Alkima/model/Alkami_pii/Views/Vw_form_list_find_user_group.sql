CREATE VIEW [Alkami_pii].[Vw_form_list_find_user_group]
AS
   SELECT
      x.[form_list_find_id],
      x.[user_group_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[form_list_find_user_group] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
