-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [AssetAcq_pii].[Vw_PrimaryDataMap]
AS
   SELECT
      x.[VendorId],
      x.[VendorCode],
      x.[BecuAttributeName],
      x.[BecuCode]
   FROM [clt_AssetAcq].[PrimaryDataMap] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
