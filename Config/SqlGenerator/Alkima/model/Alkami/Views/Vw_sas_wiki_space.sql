CREATE VIEW [Alkami].[Vw_sas_wiki_space]
AS
   SELECT
      x.[wiki_space_id],
      x.[description],
      x.[root_page_location],
      x.[decorator_screen_location],
      x.[public_page_url],
      x.[public_attachment_url],
      x.[public_blog_url],
      x.[restrict_view],
      x.[restrict_update],
      x.[allow_any_html],
      x.[screen_theme_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[wiki_space] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
