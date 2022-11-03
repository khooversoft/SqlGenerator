CREATE VIEW [Alkami].[Vw_condition_rule_v2]
AS
   SELECT
      x.[condition_set_id],
      x.[rule_id],
      x.[rule_seq_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[condition_rule_v2] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
