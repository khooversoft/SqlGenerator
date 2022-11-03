CREATE VIEW [Alkami].[Vw_sas_empl_position_class_work_type]
AS
   SELECT
      x.[empl_position_class_id],
      x.[work_type_enum_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[empl_position_class_work_type] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
