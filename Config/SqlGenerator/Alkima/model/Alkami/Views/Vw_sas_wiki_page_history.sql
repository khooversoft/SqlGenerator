CREATE VIEW [Alkami].[Vw_sas_wiki_page_history]
AS
   SELECT
      x.[wiki_page_id],
      x.[history_seq_id],
      x.[old_page_path],
      x.[user_id],
      x.[change_date_time],
      x.[version_name],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[wiki_page_history] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
