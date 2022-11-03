-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwWG_ASSET_VHCL_AUTO]
AS
   SELECT
      x.[LNUM],
      x.[ASSETID],
      x.[MILEAGE],
      x.[SERIES],
      x.[STYLE],
      x.[S_MTRCYCLESTYLE],
      x.[S_GENERIC_BODY_STYLE]
   FROM [clt_NetO].[WG_ASSET_VHCL_AUTO] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
