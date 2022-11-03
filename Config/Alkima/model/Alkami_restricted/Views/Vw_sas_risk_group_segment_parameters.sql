CREATE VIEW [Alkami_restricted].[Vw_sas_risk_group_segment_parameters]
AS
   SELECT
      x.[market_segment_id],
      x.[max_line],
      x.[max_projected_dti],
      x.[is_risk_based_pricing],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[risk_group_segment_parameters] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
