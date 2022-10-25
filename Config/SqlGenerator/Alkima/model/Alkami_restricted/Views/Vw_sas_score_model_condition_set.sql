CREATE VIEW [Alkami_restricted].[Vw_sas_score_model_condition_set]
AS
   SELECT
      x.[score_model_id],
      x.[condition_set_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[score_model_condition_set] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
