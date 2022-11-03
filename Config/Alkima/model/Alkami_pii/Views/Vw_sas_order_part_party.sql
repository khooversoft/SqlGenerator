CREATE VIEW [Alkami_pii].[Vw_sas_order_part_party]
AS
   SELECT
      x.[order_id],
      x.[order_part_seq_id],
      x.[party_id],
      x.[role_type_id],
      x.[sequence_num],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[order_part_party] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
