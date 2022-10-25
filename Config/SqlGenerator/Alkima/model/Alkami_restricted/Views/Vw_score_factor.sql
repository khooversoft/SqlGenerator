CREATE VIEW [Alkami_restricted].[Vw_score_factor]
AS
   SELECT
      x.[score_factor_id],
      x.[score_model_id],
      x.[fact_id],
      x.[factor_weight],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[score_factor] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
