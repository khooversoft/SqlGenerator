CREATE VIEW [Alkami_restricted].[Vw_sas_order_content]
AS
   SELECT
      x.[order_content_id],
      x.[order_content_type_enum_id],
      x.[order_id],
      x.[order_item_seq_id],
      x.[party_id],
      x.[role_type_id],
      x.[content_location],
      x.[description],
      x.[content_date],
      x.[viewed_date],
      x.[user_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[order_content] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
