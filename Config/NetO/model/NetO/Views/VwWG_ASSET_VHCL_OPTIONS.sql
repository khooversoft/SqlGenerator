-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwWG_ASSET_VHCL_OPTIONS]
AS
   SELECT
      x.[LNUM],
      x.[ASSETID],
      x.[ROWCOUNTER],
      x.[VALUATION_CNTR],
      x.[S_OPTION_TYPE],
      x.[VHCL_OPTION_VALUE],
      x.[SELECTED_YN],
      x.[VHCL_OPTION],
      x.[OPTIONS_PRICING_VALUE],
      x.[VHCL_OPTION_PRICE]
   FROM [clt_NetO].[WG_ASSET_VHCL_OPTIONS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
