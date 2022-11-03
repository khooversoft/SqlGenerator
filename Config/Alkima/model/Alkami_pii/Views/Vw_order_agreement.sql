CREATE VIEW [Alkami_pii].[Vw_order_agreement]
AS
   SELECT
      x.[order_id],
      x.[agreement_id],
      x.[order_part_seq_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[order_agreement] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
