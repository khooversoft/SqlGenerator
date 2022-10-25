-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwWG_ASSET_VHCL_TRAILER]
AS
   SELECT
      x.[LNUM],
      x.[ASSETID],
      x.[S_AXLE_TYPE],
      x.[BRAKES_YN],
      x.[TRAILER_LENGTH]
   FROM [clt_NetO].[WG_ASSET_VHCL_TRAILER] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
