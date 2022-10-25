CREATE VIEW [Alkami_pii].[Vw_order_tag]
AS
   SELECT
      x.[order_id],
      x.[tag_type_id],
      x.[from_date],
      x.[thru_date],
      x.[user_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[order_tag] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
