CREATE VIEW [Alkami_pii].[Vw_ruleset_condition_set]
AS
   SELECT
      x.[ruleset_id],
      x.[condition_set_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[ruleset_condition_set] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
