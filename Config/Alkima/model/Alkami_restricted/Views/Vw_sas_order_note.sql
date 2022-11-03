CREATE VIEW [Alkami_restricted].[Vw_sas_order_note]
AS
   SELECT
      x.[order_id],
      x.[note_date],
      x.[note_text],
      x.[internal_note],
      x.[user_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[order_note] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
