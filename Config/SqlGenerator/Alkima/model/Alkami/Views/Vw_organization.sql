CREATE VIEW [Alkami].[Vw_organization]
AS
   SELECT
      x.[party_id],
      x.[organization_name],
      x.[office_site_name],
      x.[annual_revenue],
      x.[num_employees],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[organization] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
