CREATE VIEW [Alkami_restricted].[Vw_score_factor_config]
AS
   SELECT
      x.[score_factor_id],
      x.[config_key],
      x.[config_value],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[score_factor_config] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
