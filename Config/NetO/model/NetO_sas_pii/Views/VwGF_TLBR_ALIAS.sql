-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TLBR_ALIAS]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[ROWSERIALNO],
      x.[FIRST_NAME],
      x.[MID_NAME],
      x.[LAST_NAME],
      x.[S_BORR_ALIAS],
      x.[NAME_SUFFIX],
      x.[ALIAS_TYPE_OTH_DESC],
      x.[CREDITORNAME],
      x.[ALIASACCTNUM],
      x.[RECORD_CREATED]
   FROM [clt_NetO].[GF_TLBR_ALIAS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
