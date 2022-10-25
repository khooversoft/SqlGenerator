CREATE VIEW [Alkami_pii].[Vw_form_response]
AS
   SELECT
      x.[form_response_id],
      x.[form_location],
      x.[form_id],
      x.[user_id],
      x.[response_date],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[form_response] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
