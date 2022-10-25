CREATE VIEW [Alkami_restricted].[Vw_sas_rule_mitigation]
AS
   SELECT
      x.[mitigation_id],
      x.[order_id],
      x.[rule_id],
      x.[party_id],
      x.[mitigated_value],
      x.[mitigated_level_enum_id],
      x.[new_level_enum_id],
      x.[reason_enum_id],
      x.[note],
      x.[user_id],
      x.[from_date],
      x.[thru_date],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[rule_mitigation] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
