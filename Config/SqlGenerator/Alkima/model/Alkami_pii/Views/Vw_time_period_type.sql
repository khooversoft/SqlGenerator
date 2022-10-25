CREATE VIEW [Alkami_pii].[Vw_time_period_type]
AS
   SELECT
      x.[time_period_type_id],
      x.[period_purpose_enum_id],
      x.[parent_period_type_id],
      x.[description],
      x.[period_length],
      x.[length_uom_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[time_period_type] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
