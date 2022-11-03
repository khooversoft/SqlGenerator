-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwWG_COLLATERAL_TYPES]
AS
   SELECT
      x.[LNUM],
      x.[DBID],
      x.[ROWSERIALNO],
      x.[COLLATERAL_TYPE],
      x.[PLEDGED_ACC],
      x.[COLLATERAL_CODE],
      x.[COLLATERAL_RECEIVED]
   FROM [clt_NetO].[WG_COLLATERAL_TYPES] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
