-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwGF_TLRR_FUNDDISB]
AS
   SELECT
      x.[LNUM],
      x.[DISB_DBID],
      x.[DISB_SERNO],
      x.[ORIG_CNTR],
      x.[ORIG_DBID],
      x.[VOIDED_YN],
      x.[PCT_OF_FUNDITEM]
   FROM [clt_NetO].[GF_TLRR_FUNDDISB] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
