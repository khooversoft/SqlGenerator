CREATE VIEW [Alkami_pii].[Vw_payroll_garnish_min_wage]
AS
   SELECT
      x.[state_or_country_geo_id],
      x.[time_period_type_id],
      x.[from_date],
      x.[thru_date],
      x.[minimum_wage],
      x.[range_low],
      x.[range_high],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[payroll_garnish_min_wage] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
