-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_creditScore].[VwGF_TLRR_FUNDDISB]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[DISB_DBID] AS [DISB_DBID],
      HASHBYTES('SHA2_256', CAST(x.[DISB_SERNO] AS NVARCHAR(50))) AS [DISB_SERNO],
      x.[ORIG_CNTR] AS [ORIG_CNTR],
      x.[ORIG_DBID] AS [ORIG_DBID],
      x.[VOIDED_YN] AS [VOIDED_YN],
      x.[PCT_OF_FUNDITEM] AS [PCT_OF_FUNDITEM]
   FROM [clt_NetO].[GF_TLRR_FUNDDISB] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
