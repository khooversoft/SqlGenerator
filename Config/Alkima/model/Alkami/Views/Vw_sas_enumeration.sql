CREATE VIEW [Alkami].[Vw_sas_enumeration]
AS
   SELECT
      x.[enum_id],
      x.[enum_type_id],
      x.[parent_enum_id],
      x.[enum_code],
      x.[sequence_num],
      x.[description],
      x.[option_value],
      x.[option_indicator],
      x.[related_enum_id],
      x.[related_enum_type_id],
      x.[status_flow_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[enumeration] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
