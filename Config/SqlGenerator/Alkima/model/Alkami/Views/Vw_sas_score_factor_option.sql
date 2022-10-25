CREATE VIEW [Alkami].[Vw_sas_score_factor_option]
AS
   SELECT
      x.[score_factor_id],
      x.[factor_option_seq_id],
      x.[min_value],
      x.[enum_value],
      x.[factor_value],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[score_factor_option] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
