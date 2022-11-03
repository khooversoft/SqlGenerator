CREATE VIEW [Alkami_restricted].[Vw_wiki_page]
AS
   SELECT
      x.[wiki_page_id],
      x.[wiki_space_id],
      x.[page_path],
      x.[parent_wiki_page_id],
      x.[sequence_num],
      x.[created_by_user_id],
      x.[published_version_name],
      x.[restrict_view],
      x.[restrict_update],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[wiki_page] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
