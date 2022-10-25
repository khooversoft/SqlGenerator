CREATE VIEW [Alkami].[Vw_condition_set]
AS
   SELECT
      x.[condition_set_id],
      x.[description],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[condition_set] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
