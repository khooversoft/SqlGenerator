-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwGF_TLBR_SUBETHNICITY]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[SUBETHNICITY_CTR],
      x.[S_SUBETHNICITY],
      x.[OTHER_DESC],
      x.[RECORD_CREATED]
   FROM [clt_NetO].[GF_TLBR_SUBETHNICITY] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
