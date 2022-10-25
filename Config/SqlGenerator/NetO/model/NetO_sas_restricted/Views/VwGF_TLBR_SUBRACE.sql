-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TLBR_SUBRACE]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[SUBRACE_CTR],
      x.[S_SUBRACE],
      x.[OTHER_ASIAN_DESC],
      x.[OTHER_PACISLDR_DESC],
      x.[RECORD_CREATED]
   FROM [clt_NetO].[GF_TLBR_SUBRACE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
