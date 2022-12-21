-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TLBR_HOUSNG_PRSNT_OTH]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[CTR] AS [CTR],
      HASHBYTES('SHA2_256', CAST(x.[OTHER_HOUSING_EXP_AMT] AS NVARCHAR(50))) AS [OTHER_HOUSING_EXP_AMT],
      HASHBYTES('SHA2_256', x.[OTHER_HOUSING_EXP_DESC]) AS [OTHER_HOUSING_EXP_DESC],
      x.[RECORD_CREATED] AS [RECORD_CREATED]
   FROM [clt_NetO].[GF_TLBR_HOUSNG_PRSNT_OTH] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
