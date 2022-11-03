CREATE VIEW [Alkami_pii].[Vw_sas_payroll_adjustment_detail]
AS
   SELECT
      x.[payroll_adjustment_id],
      x.[detail_seq_id],
      x.[rate],
      x.[rate_after_ytd_min],
      x.[ytd_min],
      x.[ytd_max],
      x.[rate_after_period_min],
      x.[period_min],
      x.[period_max],
      x.[flat_amount],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[payroll_adjustment_detail] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
