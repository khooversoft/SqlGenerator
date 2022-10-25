CREATE VIEW [Alkami_restricted].[Vw_screen_document]
AS
   SELECT
      x.[screen_location],
      x.[doc_index],
      x.[locale],
      x.[doc_title],
      x.[doc_location],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[screen_document] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
