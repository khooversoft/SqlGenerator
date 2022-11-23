-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TL_MISC_CK]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[GF_CK1] AS [GF_CK1],
      x.[GF_CK2] AS [GF_CK2],
      x.[GF_CK3] AS [GF_CK3],
      x.[GF_CK4] AS [GF_CK4],
      x.[GF_CK5] AS [GF_CK5],
      x.[GF_CK6] AS [GF_CK6],
      x.[GF_CK7] AS [GF_CK7],
      x.[GF_CK8] AS [GF_CK8],
      x.[GF_CK10] AS [GF_CK10],
      x.[GF_CK9] AS [GF_CK9],
      x.[GF_CK11] AS [GF_CK11],
      x.[GF_CK12] AS [GF_CK12],
      x.[GF_CK13] AS [GF_CK13],
      x.[GF_CK14] AS [GF_CK14],
      x.[GF_CK15] AS [GF_CK15],
      x.[GF_CK16] AS [GF_CK16],
      x.[GF_CK17] AS [GF_CK17],
      x.[GF_CK18] AS [GF_CK18],
      x.[GF_CK19] AS [GF_CK19],
      x.[GF_CK20] AS [GF_CK20],
      HASHBYTES('SHA2_256', CAST(x.[GF_CREDIT_SCORE] AS NVARCHAR(50))) AS [GF_CREDIT_SCORE]
   FROM [clt_NetO].[GF_TL_MISC_CK] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
