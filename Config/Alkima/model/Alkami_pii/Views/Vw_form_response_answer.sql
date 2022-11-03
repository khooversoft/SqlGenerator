CREATE VIEW [Alkami_pii].[Vw_form_response_answer]
AS
   SELECT
      x.[form_response_answer_id],
      x.[form_response_id],
      x.[form_id],
      x.[field_name],
      x.[sequence_num],
      x.[value_text],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[form_response_answer] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
