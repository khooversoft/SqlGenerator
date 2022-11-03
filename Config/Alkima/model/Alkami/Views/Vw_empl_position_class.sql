CREATE VIEW [Alkami].[Vw_empl_position_class]
AS
   SELECT
      x.[empl_position_class_id],
      x.[title],
      x.[description],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[empl_position_class] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
