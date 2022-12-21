-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwGF_TLR_SUBJPRP_TAX]
AS
   SELECT
      x.[LNUM],
      x.[DBID],
      HASHBYTES('SHA2_256', CAST(x.[ROWSERIALNO] AS NVARCHAR(50))) AS [ROWSERIALNO]
   FROM [clt_NetO].[GF_TLR_SUBJPRP_TAX] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
