CREATE VIEW [Alkami_restricted].[Vw_ruleset_role]
AS
   SELECT
      x.[ruleset_id],
      x.[role_type_id],
      x.[from_date],
      x.[thru_date],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[ruleset_role] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
