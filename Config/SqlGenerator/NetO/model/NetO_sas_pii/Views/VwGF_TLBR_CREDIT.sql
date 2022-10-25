-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TLBR_CREDIT]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[ROWSERIALNO],
      x.[F_SCORE],
      x.[B_SCORE],
      x.[E_SCORE],
      x.[C_SCORE],
      x.[L_SCORE],
      x.[MAN_OVERRIDE],
      x.[CREDIT_SOURCE],
      x.[LINK]
   FROM [clt_NetO].[GF_TLBR_CREDIT] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
