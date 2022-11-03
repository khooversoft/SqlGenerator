CREATE VIEW [Alkami].[Vw_ruleset_rule]
AS
   SELECT
      x.[ruleset_id],
      x.[rule_id],
      x.[sequence_num],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[ruleset_rule] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
