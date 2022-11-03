CREATE VIEW [Alkami_pii].[Vw_sas_sequence_value_item]
AS
   SELECT
      x.[seq_name],
      x.[seq_num],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[sequence_value_item] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
