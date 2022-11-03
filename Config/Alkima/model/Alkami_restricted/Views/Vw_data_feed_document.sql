CREATE VIEW [Alkami_restricted].[Vw_data_feed_document]
AS
   SELECT
      x.[data_feed_id],
      x.[data_document_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[data_feed_document] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
