CREATE VIEW [Alkami_pii].[Vw_rule_condition_set]
AS
   SELECT
      x.[rule_id],
      x.[condition_set_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[rule_condition_set] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
