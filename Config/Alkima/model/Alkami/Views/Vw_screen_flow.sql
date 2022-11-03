CREATE VIEW [Alkami].[Vw_screen_flow]
AS
   SELECT
      x.[screen_flow_id],
      x.[description],
      x.[completed_screen_path],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[screen_flow] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
